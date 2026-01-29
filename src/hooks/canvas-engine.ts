/**
 * High-Performance Canvas Engine
 * Estrutura otimizada para edição visual estilo Figma/Excalidraw/Miro
 */

export interface Point {
  x: number;
  y: number;
}

export interface Transform {
  x: number;
  y: number;
  scale: number;
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
  private transform: Transform = { x: 0, y: 0, scale: 1 };
  
  // Estado de interação
  private isDragging = false;
  private isPanning = false;
  private dragStart: Point | null = null;
  private selectedObject: CanvasObject | null = null;
  private hoveredObject: CanvasObject | null = null;
  
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

    if (this.currentTool === 'select') {
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

    if (this.isDragging && this.selectedObject && this.dragStart) {
      this.selectedObject.x = pos.x - this.dragStart.x;
      this.selectedObject.y = pos.y - this.dragStart.y;
      this.requestRedraw();
    } else if (this.drawingObject) {
      this.updateDrawing(pos);
      this.requestRedraw();
    } else {
      // Hover detection
      const hovered = this.findObjectAtPoint(pos);
      if (hovered !== this.hoveredObject) {
        this.hoveredObject = hovered;
        this.canvas.style.cursor = hovered ? 'pointer' : 'default';
        this.requestRedraw();
      }
    }
  }

  private handleMouseUp(e: MouseEvent) {
    if (this.isPanning) {
      this.isPanning = false;
      this.canvas.style.cursor = 'default';
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
    this.selectedObject = null;
  }

  private deleteSelected() {
    if (this.selectedObject) {
      this.objects = this.objects.filter(obj => obj !== this.selectedObject);
      this.selectedObject = null;
      this.requestRedraw();
    }
  }

  // Rendering
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

    // Draw objects
    this.objects.forEach(obj => this.drawObject(obj));
    
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

  // Public API
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

  public clear() {
    this.objects = [];
    this.deselectAll();
    this.requestRedraw();
  }

  public exportToJSON(): string {
    return JSON.stringify({
      objects: this.objects,
      transform: this.transform
    }, null, 2);
  }

  public importFromJSON(json: string) {
    const data = JSON.parse(json);
    this.objects = data.objects || [];
    this.transform = data.transform || { x: 0, y: 0, scale: 1 };
    this.requestRedraw();
  }

  public destroy() {
    if (this.animationFrameId !== null) {
      cancelAnimationFrame(this.animationFrameId);
    }
  }
}