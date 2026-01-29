import React, { useEffect, useRef, useState } from 'react';
import { CanvasEngine } from '@/hooks/canvas-engine';

interface CanvasEditorProps {
  width?: string;
  height?: string;
  className?: string;
  onObjectsChange?: (objects: any[]) => void;
}

export const CanvasEditor: React.FC<CanvasEditorProps> = ({
  width = '100%',
  height = '100vh',
  className = '',
  onObjectsChange
}) => {
  const canvasRef = useRef<HTMLCanvasElement>(null);
  const engineRef = useRef<CanvasEngine | null>(null);
  const [currentTool, setCurrentTool] = useState<'select' | 'rectangle' | 'circle' | 'line' | 'draw'>('select');

  useEffect(() => {
    if (!canvasRef.current) return;
    engineRef.current = new CanvasEngine(canvasRef.current);
    return () => {
      engineRef.current?.destroy();
    };
  }, []);

  useEffect(() => {
    engineRef.current?.setTool(currentTool);
  }, [currentTool]);

  const handleToolChange = (tool: typeof currentTool) => setCurrentTool(tool);

  const handleClear = () => {
    engineRef.current?.clear();
    onObjectsChange?.([]);
  };

  const handleExport = () => {
    if (engineRef.current) {
      const json = engineRef.current.exportToJSON();
      const blob = new Blob([json], { type: 'application/json' });
      const url = URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;
      a.download = 'canvas-export.json';
      a.click();
      URL.revokeObjectURL(url);
    }
  };

  const handleImport = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file || !engineRef.current) return;
    const reader = new FileReader();
    reader.onload = (evt) => {
      const json = evt.target?.result as string;
      engineRef.current?.importFromJSON(json);
    };
    reader.readAsText(file);
  };

  return (
    <div style={{ position: 'relative', width, height }} className={className}>
      {/* Toolbar */}
      <div style={{
        position: 'absolute',
        top: '20px',
        left: '50%',
        transform: 'translateX(-50%)',
        zIndex: 10,
        background: 'white',
        borderRadius: '8px',
        padding: '8px',
        boxShadow: '0 2px 8px rgba(0,0,0,0.1)',
        display: 'flex',
        gap: '8px'
      }}>
        <ToolButton
          active={currentTool === 'select'}
          onClick={() => handleToolChange('select')}
          title="Selecionar (V)"
        >
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
            <path d="M3 3l7.07 16.97 2.51-7.39 7.39-2.51L3 3z" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
          </svg>
        </ToolButton>

        <ToolButton
          active={currentTool === 'rectangle'}
          onClick={() => handleToolChange('rectangle')}
          title="Retângulo (R)"
        >
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
            <rect x="3" y="3" width="18" height="18" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
          </svg>
        </ToolButton>

        <ToolButton
          active={currentTool === 'circle'}
          onClick={() => handleToolChange('circle')}
          title="Círculo (C)"
        >
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
            <circle cx="12" cy="12" r="10" strokeWidth="2"/>
          </svg>
        </ToolButton>

        <ToolButton
          active={currentTool === 'line'}
          onClick={() => handleToolChange('line')}
          title="Linha (L)"
        >
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
            <line x1="5" y1="19" x2="19" y2="5" strokeWidth="2" strokeLinecap="round"/>
          </svg>
        </ToolButton>

        <ToolButton
          active={currentTool === 'draw'}
          onClick={() => handleToolChange('draw')}
          title="Desenhar (D)"
        >
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
            <path d="M12 19l7-7 3 3-7 7-3-3z" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
            <path d="M18 13l-1.5-7.5L2 2l3.5 14.5L13 18l5-5z" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
          </svg>
        </ToolButton>

        <div style={{ width: '1px', background: '#e5e7eb', margin: '0 4px' }} />

        <ToolButton onClick={handleClear} title="Limpar tudo">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
            <polyline points="3 6 5 6 21 6" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
            <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
          </svg>
        </ToolButton>

        <ToolButton onClick={handleExport} title="Exportar">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
            <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
            <polyline points="7 10 12 15 17 10" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
            <line x1="12" y1="15" x2="12" y2="3" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
          </svg>
        </ToolButton>

        <label style={{ cursor: 'pointer', display: 'flex', alignItems: 'center', padding: '8px' }}>
          <input
            type="file"
            accept=".json"
            onChange={handleImport}
            style={{ display: 'none' }}
          />
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor">
            <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
            <polyline points="17 8 12 3 7 8" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
            <line x1="12" y1="3" x2="12" y2="15" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round"/>
          </svg>
        </label>
      </div>

      {/* Help text */}
      <div style={{
        position: 'absolute',
        bottom: '20px',
        left: '20px',
        background: 'rgba(0,0,0,0.7)',
        color: 'white',
        padding: '12px 16px',
        borderRadius: '8px',
        fontSize: '14px',
        fontFamily: 'monospace',
        zIndex: 10
      }}>
        <div>🖱️ Scroll: Zoom</div>
        <div>⌘/Ctrl + Arraste: Pan</div>
        <div>Delete: Remover selecionado</div>
        <div>Esc: Deselecionar</div>
      </div>

      <canvas
        ref={canvasRef}
        style={{
          width: '100%',
          height: '100%',
          display: 'block',
          touchAction: 'none'
        }}
      />
    </div>
  );
};

// ToolButton component permanece igual
interface ToolButtonProps {
  active?: boolean;
  onClick: () => void;
  title: string;
  children: React.ReactNode;
}

const ToolButton: React.FC<ToolButtonProps> = ({ active, onClick, title, children }) => (
  <button
    onClick={onClick}
    title={title}
    style={{
      padding: '8px',
      border: 'none',
      background: active ? '#3b82f6' : 'transparent',
      color: active ? 'white' : '#374151',
      borderRadius: '4px',
      cursor: 'pointer',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      transition: 'all 0.2s',
      outline: 'none'
    }}
    onMouseEnter={(e) => { if (!active) e.currentTarget.style.background = '#f3f4f6'; }}
    onMouseLeave={(e) => { if (!active) e.currentTarget.style.background = 'transparent'; }}
  >
    {children}
  </button>
);

export default CanvasEditor;