export interface Point {
  x: number;
  y: number;
}

export interface Transform {
  x: number;
  y: number;
  scale: number;
}

export type AnchorPosition = 'top' | 'right' | 'bottom' | 'left';

export interface Anchor {
  objectId: string;
  position: AnchorPosition;
}

export interface Connector {
  id: string;
  from: Anchor;
  to: Anchor;
  color: string;
  strokeWidth: number;
  selected?: boolean;
}

export interface CanvasObject {
  id: string;
  type: 'rectangle' | 'circle' | 'line' | 'text' | 'path';
  x: number;
  y: number;
  width?: number;
  height?: number;
  radius?: number;
  points?: Point[];
  text?: string;
  color: string;
  strokeColor?: string;
  strokeWidth?: number;
  rotation?: number;
  selected?: boolean;
}

export class CanvasEngine {
  private canvas: HTMLCanvasElement;
  private ctx: CanvasRenderingContext2D;
  private objects: CanvasObject[] = [];
  private connectors: Connector[] = [];
  private transform: Transform = { x: 0, y: 0, scale: 1 };
  
  // Estado de interação
  private isDragging = false;
  private isPanning = false;
  private dragStart: Point | null = null;
  private selectedObject: CanvasObject | null = null;
  private hoveredObject: CanvasObject | null = null;
  
  // Estado de conectores
  private isCreatingConnector = false;
  private connectorStart: Anchor | null = null;
  private tempConnectorEnd: Point | null = null;
  private hoveredAnchor: Anchor | null = null;
  private selectedConnector: Connector | null = null;
  private hoveredConnectionButton: { objectId: string; position: AnchorPosition } | null = null;
  
  // Tool state
  private currentTool: 'select' | 'rectangle' | 'circle' | 'line' | 'text' | 'draw' = 'select';
  private drawingObject: CanvasObject | null = null;

  // Performance optimization
  private animationFrameId: number | null = null;
  private needsRedraw = true;

  constructor(canvas: HTMLCanvasElement) {
    this.canvas = canvas;
    const ctx = canvas.getContext('2d', { alpha: false });
    if (!ctx) throw new Error('Canvas context not available');
    this.ctx = ctx;

    this.setupCanvas();
    this.setupEventListeners();
    this.startRenderLoop();
  }

  private setupCanvas() {
    const dpr = window.devicePixelRatio || 1;
    const rect = this.canvas.getBoundingClientRect();
    
    this.canvas.width = rect.width * dpr;
    this.canvas.height = rect.height * dpr;
    
    this.ctx.scale(dpr, dpr);
    this.canvas.style.width = rect.width + 'px';
    this.canvas.style.height = rect.height + 'px';
  }

  private setupEventListeners() {
    // Mouse events
    this.canvas.addEventListener('mousedown', this.handleMouseDown.bind(this));
    this.canvas.addEventListener('mousemove', this.handleMouseMove.bind(this));
    this.canvas.addEventListener('mouseup', this.handleMouseUp.bind(this));
    this.canvas.addEventListener('wheel', this.handleWheel.bind(this));
    
    // Touch events para mobile
    this.canvas.addEventListener('touchstart', this.handleTouchStart.bind(this));
    this.canvas.addEventListener('touchmove', this.handleTouchMove.bind(this));
    this.canvas.addEventListener('touchend', this.handleTouchEnd.bind(this));
    
    // Keyboard
    window.addEventListener('keydown', this.handleKeyDown.bind(this));
    
    // Resize
    window.addEventListener('resize', () => {
      this.setupCanvas();
      this.requestRedraw();
    });
  }

  private getMousePos(e: MouseEvent | TouchEvent): Point {
    const rect = this.canvas.getBoundingClientRect();
    const clientX = 'touches' in e ? e.touches[0].clientX : e.clientX;
    const clientY = 'touches' in e ? e.touches[0].clientY : e.clientY;
    
    return {
      x: (clientX - rect.left - this.transform.x) / this.transform.scale,
      y: (clientY - rect.top - this.transform.y) / this.transform.scale
    };
  }

  private handleMouseDown(e: MouseEvent) {
    e.preventDefault();
    const pos = this.getMousePos(e);

    if (e.button === 1 || e.ctrlKey || e.metaKey) {
      // Pan com botão do meio ou Ctrl/Cmd
      this.isPanning = true;
      this.dragStart = { x: e.clientX - this.transform.x, y: e.clientY - this.transform.y };
      this.canvas.style.cursor = 'grabbing';
      return;
    }

    // Verificar se clicou em um botão de conexão
    const connectionButton = this.findConnectionButtonAtPoint(pos);
    if (connectionButton) {
      this.isCreatingConnector = true;
      this.connectorStart = { objectId: connectionButton.objectId, position: connectionButton.position };
      this.tempConnectorEnd = pos;
      return;
    }

    if (this.currentTool === 'select') {
      // Verificar se clicou em um conector
      const clickedConnector = this.findConnectorAtPoint(pos);
      if (clickedConnector) {
        this.selectConnector(clickedConnector);
        this.requestRedraw();
        return;
      }

      const clicked = this.findObjectAtPoint(pos);
      if (clicked) {
        this.selectObject(clicked);
        this.isDragging = true;
        this.dragStart = { x: pos.x - clicked.x, y: pos.y - clicked.y };
      } else {
        this.deselectAll();
      }
    } else {
      // Começar a desenhar novo objeto
      this.startDrawing(pos);
    }
    
    this.requestRedraw();
  }

  private handleMouseMove(e: MouseEvent) {
    const pos = this.getMousePos(e);

    if (this.isPanning && this.dragStart) {
      this.transform.x = e.clientX - this.dragStart.x;
      this.transform.y = e.clientY - this.dragStart.y;
      this.requestRedraw();
      return;
    }

    // Criando conector
    if (this.isCreatingConnector) {
      this.tempConnectorEnd = pos;
      
      // Verificar se está sobre um anchor
      const anchor = this.findAnchorAtPoint(pos);
      this.hoveredAnchor = anchor;
      
      this.requestRedraw();
      return;
    }

    if (this.isDragging && this.selectedObject && this.dragStart) {
      this.selectedObject.x = pos.x - this.dragStart.x;
      this.selectedObject.y = pos.y - this.dragStart.y;
      this.requestRedraw();
    } else if (this.drawingObject) {
      this.updateDrawing(pos);
      this.requestRedraw();
    } else {
      // Verificar hover sobre botões de conexão
      const connectionButton = this.findConnectionButtonAtPoint(pos);
      if (connectionButton !== this.hoveredConnectionButton) {
        this.hoveredConnectionButton = connectionButton;
        this.canvas.style.cursor = connectionButton ? 'crosshair' : 'default';
        this.requestRedraw();
      }

      // Hover detection para objetos
      if (!connectionButton) {
        const hovered = this.findObjectAtPoint(pos);
        if (hovered !== this.hoveredObject) {
          this.hoveredObject = hovered;
          this.canvas.style.cursor = hovered ? 'pointer' : 'default';
          this.requestRedraw();
        }
      }
    }
  }

  private handleMouseUp(e: MouseEvent) {
    if (this.isPanning) {
      this.isPanning = false;
      this.canvas.style.cursor = 'default';
    }
    
    // Finalizar criação de conector
    if (this.isCreatingConnector && this.connectorStart) {
      const pos = this.getMousePos(e);
      const endAnchor = this.findAnchorAtPoint(pos);
      
      if (endAnchor && endAnchor.objectId !== this.connectorStart.objectId) {
        this.createConnector(this.connectorStart, endAnchor);
      }
      
      this.isCreatingConnector = false;
      this.connectorStart = null;
      this.tempConnectorEnd = null;
      this.hoveredAnchor = null;
      this.requestRedraw();
      return;
    }
    
    if (this.drawingObject) {
      this.finishDrawing();
    }
    
    this.isDragging = false;
    this.dragStart = null;
  }

  private handleWheel(e: WheelEvent) {
    e.preventDefault();
    const pos = this.getMousePos(e);
    const delta = e.deltaY > 0 ? 0.9 : 1.1;
    const newScale = Math.max(0.1, Math.min(10, this.transform.scale * delta));
    
    // Zoom para a posição do mouse
    this.transform.x -= pos.x * (newScale - this.transform.scale);
    this.transform.y -= pos.y * (newScale - this.transform.scale);
    this.transform.scale = newScale;
    
    this.requestRedraw();
  }

  private handleTouchStart(e: TouchEvent) {
    if (e.touches.length === 2) {
      // Pinch zoom
      e.preventDefault();
    } else {
      this.handleMouseDown(e as any);
    }
  }

  private handleTouchMove(e: TouchEvent) {
    this.handleMouseMove(e as any);
  }

  private handleTouchEnd(e: TouchEvent) {
    this.handleMouseUp(e as any);
  }

  private handleKeyDown(e: KeyboardEvent) {
    if (e.key === 'Delete' || e.key === 'Backspace') {
      this.deleteSelected();
    } else if (e.key === 'Escape') {
      this.deselectAll();
    } else if ((e.ctrlKey || e.metaKey) && e.key === 'z') {
      // Implementar undo
      console.log('Undo');
    }
  }

  // ==================== FUNÇÕES DE CONECTORES ====================
  
  private getAnchorPoint(objectId: string, position: AnchorPosition): Point | null {
    const obj = this.objects.find(o => o.id === objectId);
    if (!obj) return null;

    switch (obj.type) {
      case 'rectangle':
        const w = obj.width || 0;
        const h = obj.height || 0;
        switch (position) {
          case 'top': return { x: obj.x + w / 2, y: obj.y };
          case 'right': return { x: obj.x + w, y: obj.y + h / 2 };
          case 'bottom': return { x: obj.x + w / 2, y: obj.y + h };
          case 'left': return { x: obj.x, y: obj.y + h / 2 };
        }
        break;
      
      case 'circle':
        const r = obj.radius || 0;
        switch (position) {
          case 'top': return { x: obj.x, y: obj.y - r };
          case 'right': return { x: obj.x + r, y: obj.y };
          case 'bottom': return { x: obj.x, y: obj.y + r };
          case 'left': return { x: obj.x - r, y: obj.y };
        }
        break;
    }

    return null;
  }

  private getConnectionButtonPosition(objectId: string, position: AnchorPosition): Point | null {
    const anchorPoint = this.getAnchorPoint(objectId, position);
    if (!anchorPoint) return null;

    const offset = 20 / this.transform.scale;

    switch (position) {
      case 'top': return { x: anchorPoint.x, y: anchorPoint.y - offset };
      case 'right': return { x: anchorPoint.x + offset, y: anchorPoint.y };
      case 'bottom': return { x: anchorPoint.x, y: anchorPoint.y + offset };
      case 'left': return { x: anchorPoint.x - offset, y: anchorPoint.y };
    }
  }

  private findConnectionButtonAtPoint(point: Point): { objectId: string; position: AnchorPosition } | null {
    const buttonRadius = 8 / this.transform.scale;

    for (const obj of this.objects) {
      if (obj.type !== 'rectangle' && obj.type !== 'circle') continue;

      const positions: AnchorPosition[] = ['top', 'right', 'bottom', 'left'];
      
      for (const position of positions) {
        const buttonPos = this.getConnectionButtonPosition(obj.id, position);
        if (!buttonPos) continue;

        const dx = point.x - buttonPos.x;
        const dy = point.y - buttonPos.y;
        const distance = Math.sqrt(dx * dx + dy * dy);

        if (distance < buttonRadius) {
          return { objectId: obj.id, position };
        }
      }
    }

    return null;
  }

  private findAnchorAtPoint(point: Point): Anchor | null {
    const threshold = 15 / this.transform.scale;

    for (const obj of this.objects) {
      if (obj.type !== 'rectangle' && obj.type !== 'circle') continue;

      const positions: AnchorPosition[] = ['top', 'right', 'bottom', 'left'];
      
      for (const position of positions) {
        const anchorPoint = this.getAnchorPoint(obj.id, position);
        if (!anchorPoint) continue;

        const dx = point.x - anchorPoint.x;
        const dy = point.y - anchorPoint.y;
        const distance = Math.sqrt(dx * dx + dy * dy);

        if (distance < threshold) {
          return { objectId: obj.id, position };
        }
      }
    }

    return null;
  }

  private createConnector(from: Anchor, to: Anchor) {
    const connector: Connector = {
      id: `conn_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`,
      from,
      to,
      color: '#6366f1',
      strokeWidth: 2
    };

    this.connectors.push(connector);
    this.requestRedraw();
  }

  private findConnectorAtPoint(point: Point): Connector | null {
    const threshold = 8 / this.transform.scale;

    for (const connector of this.connectors) {
      const path = this.calculateOrthogonalPath(connector);
      if (!path || path.length < 2) continue;

      for (let i = 0; i < path.length - 1; i++) {
        const distance = this.distanceToLine(point, path[i], path[i + 1]);
        if (distance < threshold) {
          return connector;
        }
      }
    }

    return null;
  }

  private distanceToLine(point: Point, lineStart: Point, lineEnd: Point): number {
    const dx = lineEnd.x - lineStart.x;
    const dy = lineEnd.y - lineStart.y;
    const length = Math.sqrt(dx * dx + dy * dy);
    
    if (length === 0) return Math.sqrt(
      (point.x - lineStart.x) ** 2 + (point.y - lineStart.y) ** 2
    );

    const t = Math.max(0, Math.min(1, 
      ((point.x - lineStart.x) * dx + (point.y - lineStart.y) * dy) / (length * length)
    ));

    const projX = lineStart.x + t * dx;
    const projY = lineStart.y + t * dy;

    return Math.sqrt((point.x - projX) ** 2 + (point.y - projY) ** 2);
  }

  private selectConnector(connector: Connector) {
    this.deselectAll();
    connector.selected = true;
    this.selectedConnector = connector;
  }

  private deleteSelectedConnector() {
    if (this.selectedConnector) {
      this.connectors = this.connectors.filter(c => c !== this.selectedConnector);
      this.selectedConnector = null;
      this.requestRedraw();
    }
  }

  // Roteamento ortogonal inteligente estilo Figma
  private calculateOrthogonalPath(connector: Connector): Point[] {
    const fromPoint = this.getAnchorPoint(connector.from.objectId, connector.from.position);
    const toPoint = this.getAnchorPoint(connector.to.objectId, connector.to.position);

    if (!fromPoint || !toPoint) return [];

    const path: Point[] = [fromPoint];
    const gap = 20; // Distância mínima do objeto

    // Direções baseadas na posição do anchor
    const fromDir = this.getDirection(connector.from.position);
    const toDir = this.getDirection(connector.to.position);

    // Primeiro segmento: sair do objeto
    const p1 = {
      x: fromPoint.x + fromDir.x * gap,
      y: fromPoint.y + fromDir.y * gap
    };
    path.push(p1);

    // Último segmento antes de chegar: aproximar do destino
    const p2 = {
      x: toPoint.x + toDir.x * gap,
      y: toPoint.y + toDir.y * gap
    };

    // Roteamento inteligente entre p1 e p2
    if (connector.from.position === connector.to.position) {
      // Mesma direção - criar loop
      this.addParallelPath(path, p1, p2, connector.from.position);
    } else if (this.isOpposite(connector.from.position, connector.to.position)) {
      // Direções opostas
      this.addOppositePath(path, p1, p2, connector.from.position);
    } else {
      // Direções perpendiculares
      this.addPerpendicularPath(path, p1, p2, connector.from.position, connector.to.position);
    }

    path.push(p2);
    path.push(toPoint);

    return path;
  }

  private getDirection(position: AnchorPosition): Point {
    switch (position) {
      case 'top': return { x: 0, y: -1 };
      case 'right': return { x: 1, y: 0 };
      case 'bottom': return { x: 0, y: 1 };
      case 'left': return { x: -1, y: 0 };
    }
  }

  private isOpposite(pos1: AnchorPosition, pos2: AnchorPosition): boolean {
    return (pos1 === 'top' && pos2 === 'bottom') ||
           (pos1 === 'bottom' && pos2 === 'top') ||
           (pos1 === 'left' && pos2 === 'right') ||
           (pos1 === 'right' && pos2 === 'left');
  }

  private addParallelPath(path: Point[], from: Point, to: Point, position: AnchorPosition) {
    const offset = 40;
    
    if (position === 'top' || position === 'bottom') {
      const midX = (from.x + to.x) / 2;
      const sideY = position === 'top' ? Math.min(from.y, to.y) - offset : Math.max(from.y, to.y) + offset;
      
      path.push({ x: from.x, y: sideY });
      path.push({ x: to.x, y: sideY });
    } else {
      const midY = (from.y + to.y) / 2;
      const sideX = position === 'left' ? Math.min(from.x, to.x) - offset : Math.max(from.x, to.x) + offset;
      
      path.push({ x: sideX, y: from.y });
      path.push({ x: sideX, y: to.y });
    }
  }

  private addOppositePath(path: Point[], from: Point, to: Point, fromPosition: AnchorPosition) {
    if (fromPosition === 'top' || fromPosition === 'bottom') {
      // Vertical
      const midY = (from.y + to.y) / 2;
      path.push({ x: from.x, y: midY });
      path.push({ x: to.x, y: midY });
    } else {
      // Horizontal
      const midX = (from.x + to.x) / 2;
      path.push({ x: midX, y: from.y });
      path.push({ x: midX, y: to.y });
    }
  }

  private addPerpendicularPath(path: Point[], from: Point, to: Point, fromPos: AnchorPosition, toPos: AnchorPosition) {
    // Roteamento em L ou Z
    if ((fromPos === 'right' || fromPos === 'left') && (toPos === 'top' || toPos === 'bottom')) {
      // Horizontal primeiro, depois vertical
      path.push({ x: to.x, y: from.y });
    } else {
      // Vertical primeiro, depois horizontal
      path.push({ x: from.x, y: to.y });
    }
  }

  // ==================== FUNÇÕES DE DESENHO ORIGINAIS ====================

  private startDrawing(pos: Point) {
    const id = `obj_${Date.now()}_${Math.random().toString(36).substr(2, 9)}`;
    
    switch (this.currentTool) {
      case 'rectangle':
        this.drawingObject = {
          id,
          type: 'rectangle',
          x: pos.x,
          y: pos.y,
          width: 0,
          height: 0,
          color: '#3b82f6',
          strokeColor: '#1e40af',
          strokeWidth: 2
        };
        break;
      case 'circle':
        this.drawingObject = {
          id,
          type: 'circle',
          x: pos.x,
          y: pos.y,
          radius: 0,
          color: '#10b981',
          strokeColor: '#059669',
          strokeWidth: 2
        };
        break;
      case 'line':
        this.drawingObject = {
          id,
          type: 'line',
          x: pos.x,
          y: pos.y,
          points: [{ x: 0, y: 0 }, { x: 0, y: 0 }],
          color: '#ef4444',
          strokeWidth: 2
        };
        break;
      case 'draw':
        this.drawingObject = {
          id,
          type: 'path',
          x: 0,
          y: 0,
          points: [{ x: pos.x, y: pos.y }],
          color: '#8b5cf6',
          strokeWidth: 2
        };
        break;
    }
  }

  private updateDrawing(pos: Point) {
    if (!this.drawingObject) return;

    switch (this.drawingObject.type) {
      case 'rectangle':
        this.drawingObject.width = pos.x - this.drawingObject.x;
        this.drawingObject.height = pos.y - this.drawingObject.y;
        break;
      case 'circle':
        const dx = pos.x - this.drawingObject.x;
        const dy = pos.y - this.drawingObject.y;
        this.drawingObject.radius = Math.sqrt(dx * dx + dy * dy);
        break;
      case 'line':
        if (this.drawingObject.points) {
          this.drawingObject.points[1] = {
            x: pos.x - this.drawingObject.x,
            y: pos.y - this.drawingObject.y
          };
        }
        break;
      case 'path':
        if (this.drawingObject.points) {
          this.drawingObject.points.push({ x: pos.x, y: pos.y });
        }
        break;
    }
  }

  private finishDrawing() {
    if (this.drawingObject) {
      this.objects.push(this.drawingObject);
      this.drawingObject = null;
    }
  }

  private findObjectAtPoint(point: Point): CanvasObject | null {
    // Busca reversa para pegar o objeto do topo
    for (let i = this.objects.length - 1; i >= 0; i--) {
      const obj = this.objects[i];
      if (this.isPointInObject(point, obj)) {
        return obj;
      }
    }
    return null;
  }

  private isPointInObject(point: Point, obj: CanvasObject): boolean {
    switch (obj.type) {
      case 'rectangle':
        return point.x >= obj.x && 
               point.x <= obj.x + (obj.width || 0) &&
               point.y >= obj.y && 
               point.y <= obj.y + (obj.height || 0);
      case 'circle':
        const dx = point.x - obj.x;
        const dy = point.y - obj.y;
        return Math.sqrt(dx * dx + dy * dy) <= (obj.radius || 0);
      default:
        return false;
    }
  }

  private selectObject(obj: CanvasObject) {
    this.deselectAll();
    obj.selected = true;
    this.selectedObject = obj;
  }

  private deselectAll() {
    this.objects.forEach(obj => obj.selected = false);
    this.connectors.forEach(conn => conn.selected = false);
    this.selectedObject = null;
    this.selectedConnector = null;
  }

  private deleteSelected() {
    if (this.selectedObject) {
      // Remover conectores associados ao objeto
      this.connectors = this.connectors.filter(
        c => c.from.objectId !== this.selectedObject!.id && 
             c.to.objectId !== this.selectedObject!.id
      );
      
      this.objects = this.objects.filter(obj => obj !== this.selectedObject);
      this.selectedObject = null;
      this.requestRedraw();
    } else if (this.selectedConnector) {
      this.deleteSelectedConnector();
    }
  }

  // ==================== RENDERING ====================
  
  private startRenderLoop() {
    const render = () => {
      if (this.needsRedraw) {
        this.render();
        this.needsRedraw = false;
      }
      this.animationFrameId = requestAnimationFrame(render);
    };
    render();
  }

  private requestRedraw() {
    this.needsRedraw = true;
  }

  private render() {
    const ctx = this.ctx;
    const rect = this.canvas.getBoundingClientRect();
    
    // Clear
    ctx.fillStyle = '#ffffff';
    ctx.fillRect(0, 0, rect.width, rect.height);

    // Save state
    ctx.save();
    
    // Apply transform
    ctx.translate(this.transform.x, this.transform.y);
    ctx.scale(this.transform.scale, this.transform.scale);

    // Draw grid
    this.drawGrid();

    // Draw connectors (abaixo dos objetos)
    this.connectors.forEach(conn => this.drawConnector(conn));
    
    // Draw temporary connector
    if (this.isCreatingConnector && this.connectorStart && this.tempConnectorEnd) {
      this.drawTemporaryConnector(this.connectorStart, this.tempConnectorEnd);
    }

    // Draw objects
    this.objects.forEach(obj => this.drawObject(obj));
    
    // Draw connection buttons on hover or when object is selected
    this.objects.forEach(obj => {
      if (obj.selected || obj === this.hoveredObject) {
        this.drawConnectionButtons(obj);
      }
    });
    
    // Draw object being created
    if (this.drawingObject) {
      this.drawObject(this.drawingObject);
    }

    // Restore state
    ctx.restore();
  }

  private drawGrid() {
    const ctx = this.ctx;
    const gridSize = 20;
    const rect = this.canvas.getBoundingClientRect();
    
    ctx.strokeStyle = '#e5e7eb';
    ctx.lineWidth = 0.5;
    
    const startX = Math.floor(-this.transform.x / this.transform.scale / gridSize) * gridSize;
    const startY = Math.floor(-this.transform.y / this.transform.scale / gridSize) * gridSize;
    const endX = startX + rect.width / this.transform.scale + gridSize;
    const endY = startY + rect.height / this.transform.scale + gridSize;
    
    for (let x = startX; x < endX; x += gridSize) {
      ctx.beginPath();
      ctx.moveTo(x, startY);
      ctx.lineTo(x, endY);
      ctx.stroke();
    }
    
    for (let y = startY; y < endY; y += gridSize) {
      ctx.beginPath();
      ctx.moveTo(startX, y);
      ctx.lineTo(endX, y);
      ctx.stroke();
    }
  }

  private drawObject(obj: CanvasObject) {
    const ctx = this.ctx;

    ctx.save();

    switch (obj.type) {
      case 'rectangle':
        ctx.fillStyle = obj.color;
        ctx.fillRect(obj.x, obj.y, obj.width || 0, obj.height || 0);
        if (obj.strokeColor) {
          ctx.strokeStyle = obj.strokeColor;
          ctx.lineWidth = obj.strokeWidth || 1;
          ctx.strokeRect(obj.x, obj.y, obj.width || 0, obj.height || 0);
        }
        break;
        
      case 'circle':
        ctx.fillStyle = obj.color;
        ctx.beginPath();
        ctx.arc(obj.x, obj.y, obj.radius || 0, 0, Math.PI * 2);
        ctx.fill();
        if (obj.strokeColor) {
          ctx.strokeStyle = obj.strokeColor;
          ctx.lineWidth = obj.strokeWidth || 1;
          ctx.stroke();
        }
        break;
        
      case 'line':
        if (obj.points && obj.points.length >= 2) {
          ctx.strokeStyle = obj.color;
          ctx.lineWidth = obj.strokeWidth || 1;
          ctx.beginPath();
          ctx.moveTo(obj.x + obj.points[0].x, obj.y + obj.points[0].y);
          ctx.lineTo(obj.x + obj.points[1].x, obj.y + obj.points[1].y);
          ctx.stroke();
        }
        break;
        
      case 'path':
        if (obj.points && obj.points.length > 0) {
          ctx.strokeStyle = obj.color;
          ctx.lineWidth = obj.strokeWidth || 1;
          ctx.lineCap = 'round';
          ctx.lineJoin = 'round';
          ctx.beginPath();
          ctx.moveTo(obj.points[0].x, obj.points[0].y);
          for (let i = 1; i < obj.points.length; i++) {
            ctx.lineTo(obj.points[i].x, obj.points[i].y);
          }
          ctx.stroke();
        }
        break;
    }

    // Selection indicator
    if (obj.selected) {
      ctx.strokeStyle = '#3b82f6';
      ctx.lineWidth = 2 / this.transform.scale;
      ctx.setLineDash([5 / this.transform.scale, 5 / this.transform.scale]);
      
      switch (obj.type) {
        case 'rectangle':
          ctx.strokeRect(obj.x - 5, obj.y - 5, (obj.width || 0) + 10, (obj.height || 0) + 10);
          break;
        case 'circle':
          ctx.beginPath();
          ctx.arc(obj.x, obj.y, (obj.radius || 0) + 5, 0, Math.PI * 2);
          ctx.stroke();
          break;
      }
      
      ctx.setLineDash([]);
    }

    ctx.restore();
  }

  private drawConnectionButtons(obj: CanvasObject) {
    if (obj.type !== 'rectangle' && obj.type !== 'circle') return;

    const ctx = this.ctx;
    const positions: AnchorPosition[] = ['top', 'right', 'bottom', 'left'];
    const buttonRadius = 6 / this.transform.scale;

    positions.forEach(position => {
      const buttonPos = this.getConnectionButtonPosition(obj.id, position);
      if (!buttonPos) return;

      const isHovered = this.hoveredConnectionButton?.objectId === obj.id && 
                       this.hoveredConnectionButton?.position === position;

      // Fundo do botão
      ctx.fillStyle = isHovered ? '#6366f1' : '#ffffff';
      ctx.strokeStyle = '#6366f1';
      ctx.lineWidth = 2 / this.transform.scale;

      ctx.beginPath();
      ctx.arc(buttonPos.x, buttonPos.y, buttonRadius, 0, Math.PI * 2);
      ctx.fill();
      ctx.stroke();

      // Ícone de +
      ctx.strokeStyle = isHovered ? '#ffffff' : '#6366f1';
      ctx.lineWidth = 1.5 / this.transform.scale;
      
      const iconSize = 3 / this.transform.scale;
      ctx.beginPath();
      ctx.moveTo(buttonPos.x - iconSize, buttonPos.y);
      ctx.lineTo(buttonPos.x + iconSize, buttonPos.y);
      ctx.moveTo(buttonPos.x, buttonPos.y - iconSize);
      ctx.lineTo(buttonPos.x, buttonPos.y + iconSize);
      ctx.stroke();
    });
  }

  private drawConnector(connector: Connector) {
    const ctx = this.ctx;
    const path = this.calculateOrthogonalPath(connector);

    if (!path || path.length < 2) return;

    ctx.strokeStyle = connector.selected ? '#3b82f6' : connector.color;
    ctx.lineWidth = connector.selected ? connector.strokeWidth + 1 : connector.strokeWidth;
    ctx.lineCap = 'round';
    ctx.lineJoin = 'round';

    // Desenhar o caminho
    ctx.beginPath();
    ctx.moveTo(path[0].x, path[0].y);
    for (let i = 1; i < path.length; i++) {
      ctx.lineTo(path[i].x, path[i].y);
    }
    ctx.stroke();

    // Arrow head no final
    const lastSegment = path.length - 1;
    this.drawArrowHead(path[lastSegment - 1], path[lastSegment], connector.selected ? '#3b82f6' : connector.color);
  }

  private drawTemporaryConnector(from: Anchor, endPoint: Point) {
    const ctx = this.ctx;
    const fromPoint = this.getAnchorPoint(from.objectId, from.position);
    if (!fromPoint) return;

    ctx.strokeStyle = '#6366f1';
    ctx.lineWidth = 2;
    ctx.setLineDash([5, 5]);
    ctx.lineCap = 'round';

    // Desenhar linha temporária com snap para anchor se houver
    const targetPoint = this.hoveredAnchor 
      ? this.getAnchorPoint(this.hoveredAnchor.objectId, this.hoveredAnchor.position) || endPoint
      : endPoint;

    ctx.beginPath();
    ctx.moveTo(fromPoint.x, fromPoint.y);
    ctx.lineTo(targetPoint.x, targetPoint.y);
    ctx.stroke();

    ctx.setLineDash([]);

    // Indicador visual no anchor de destino
    if (this.hoveredAnchor) {
      const anchorPoint = this.getAnchorPoint(this.hoveredAnchor.objectId, this.hoveredAnchor.position);
      if (anchorPoint) {
        ctx.fillStyle = '#6366f1';
        ctx.beginPath();
        ctx.arc(anchorPoint.x, anchorPoint.y, 8 / this.transform.scale, 0, Math.PI * 2);
        ctx.fill();
      }
    }
  }

  private drawArrowHead(from: Point, to: Point, color: string) {
    const ctx = this.ctx;
    const headLength = 10 / this.transform.scale;
    const angle = Math.atan2(to.y - from.y, to.x - from.x);

    ctx.fillStyle = color;
    ctx.beginPath();
    ctx.moveTo(to.x, to.y);
    ctx.lineTo(
      to.x - headLength * Math.cos(angle - Math.PI / 6),
      to.y - headLength * Math.sin(angle - Math.PI / 6)
    );
    ctx.lineTo(
      to.x - headLength * Math.cos(angle + Math.PI / 6),
      to.y - headLength * Math.sin(angle + Math.PI / 6)
    );
    ctx.closePath();
    ctx.fill();
  }

  // ==================== PUBLIC API ====================
  
  public setTool(tool: typeof this.currentTool) {
    this.currentTool = tool;
    this.deselectAll();
    this.requestRedraw();
  }

  public addObject(obj: CanvasObject) {
    this.objects.push(obj);
    this.requestRedraw();
  }

  public getObjects(): CanvasObject[] {
    return this.objects;
  }

  public getConnectors(): Connector[] {
    return this.connectors;
  }

  public clear() {
    this.objects = [];
    this.connectors = [];
    this.deselectAll();
    this.requestRedraw();
  }

  public exportToJSON(): string {
    return JSON.stringify({
      objects: this.objects,
      connectors: this.connectors,
      transform: this.transform
    }, null, 2);
  }

  public importFromJSON(json: string) {
    const data = JSON.parse(json);
    this.objects = data.objects || [];
    this.connectors = data.connectors || [];
    this.transform = data.transform || { x: 0, y: 0, scale: 1 };
    this.requestRedraw();
  }

  public destroy() {
    if (this.animationFrameId !== null) {
      cancelAnimationFrame(this.animationFrameId);
    }
  }
}
