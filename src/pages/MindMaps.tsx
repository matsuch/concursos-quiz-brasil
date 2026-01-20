import { useState, useEffect, useRef } from 'react';
import { Plus, Minus, Home, Download, Trash2, X, Info } from 'lucide-react';
import { supabase } from "@/integrations/supabase/client";
import Navbar from "@/components/Navbar";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Alert, AlertDescription, AlertTitle } from "@/components/ui/alert";

const MindMapViewer = () => {
  const [zoom, setZoom] = useState(1);
  const [selectedNode, setSelectedNode] = useState(null);
  const [mindMaps, setMindMaps] = useState([]);
  const [currentMapIndex, setCurrentMapIndex] = useState(0);
  const [loading, setLoading] = useState(true);
  const [showNewMapModal, setShowNewMapModal] = useState(false);
  const [newMapData, setNewMapData] = useState({ title: '', subject: '' });
  const [editingNode, setEditingNode] = useState(null);
  const [draggingNode, setDraggingNode] = useState(null);
  const [dragOffset, setDragOffset] = useState({ x: 0, y: 0 });
  const [canvasOffset, setCanvasOffset] = useState({ x: 0, y: 0 });
  const [isPanning, setIsPanning] = useState(false);
  const [panStart, setPanStart] = useState({ x: 0, y: 0 });
  const [showInstructions, setShowInstructions] = useState(false);
  const canvasRef = useRef(null);

  useEffect(() => {
    loadMindMaps();
  }, []);

  useEffect(() => {
    const handleWheel = (e) => {
      if (e.ctrlKey || e.metaKey) {
        e.preventDefault();
        const delta = e.deltaY > 0 ? -0.1 : 0.1;
        setZoom(prev => Math.max(0.5, Math.min(2, prev + delta)));
      }
    };

    const canvas = canvasRef.current;
    if (canvas) {
      canvas.addEventListener('wheel', handleWheel, { passive: false });
      return () => canvas.removeEventListener('wheel', handleWheel);
    }
  }, []);

  const loadMindMaps = async () => {
    try {
      setLoading(true);
      const { data, error } = await supabase
        .from('mind_maps')
        .select('*')
        .order('created_at', { ascending: false });

      if (error) throw error;
      setMindMaps(data || []);
    } catch (error) {
      console.error('Erro ao carregar mapas:', error);
      setMindMaps([]);
    } finally {
      setLoading(false);
    }
  };

  const createMindMap = async (mapData) => {
    try {
      const { data, error } = await supabase
        .from('mind_maps')
        .insert([{
          title: mapData.title,
          subject: mapData.subject,
          nodes: mapData.nodes
        }])
        .select();

      if (error) throw error;
      
      if (data && data[0]) {
        setMindMaps(prev => [data[0], ...prev]);
        setCurrentMapIndex(0);
      }
      
      return data;
    } catch (error) {
      console.error('Erro ao criar mapa:', error);
    }
  };

  const updateMindMap = async (id, updates) => {
    try {
      const { error } = await supabase
        .from('mind_maps')
        .update(updates)
        .eq('id', id);

      if (error) throw error;
      
      setMindMaps(prev => prev.map(map => 
        map.id === id ? { ...map, ...updates } : map
      ));
    } catch (error) {
      console.error('Erro ao atualizar mapa:', error);
    }
  };

  const deleteMindMap = async (id) => {
    if (!confirm('Tem certeza que deseja excluir este mapa mental?')) return;

    try {
      const { error } = await supabase
        .from('mind_maps')
        .delete()
        .eq('id', id);

      if (error) throw error;
      
      setMindMaps(prev => prev.filter(map => map.id !== id));
      setCurrentMapIndex(0);
    } catch (error) {
      console.error('Erro ao deletar mapa:', error);
    }
  };

  const handleCreateNewMap = async () => {
    if (!newMapData.title || !newMapData.subject) {
      alert('Preencha todos os campos');
      return;
    }

    const newMap = {
      title: newMapData.title,
      subject: newMapData.subject,
      nodes: [
        { id: 1, text: newMapData.title, x: 400, y: 200, level: 0, parent: null }
      ]
    };

    await createMindMap(newMap);
    setShowNewMapModal(false);
    setNewMapData({ title: '', subject: '' });
  };

  const addNode = async (parentId) => {
    if (!currentMap) return;

    const parent = currentMap.nodes.find(n => n.id === parentId);
    const newId = Math.max(...currentMap.nodes.map(n => n.id)) + 1;
    
    const newNode = {
      id: newId,
      text: 'Novo Tópico',
      x: parent.x - 150,
      y: parent.y + (Math.random() * 100 - 50),
      level: parent.level + 1,
      parent: parentId
    };

    const updatedNodes = [...currentMap.nodes, newNode];
    await updateMindMap(currentMap.id, { nodes: updatedNodes });
  };

  const updateNodeText = async (nodeId, newText) => {
    if (!currentMap) return;

    const updatedNodes = currentMap.nodes.map(node =>
      node.id === nodeId ? { ...node, text: newText } : node
    );

    await updateMindMap(currentMap.id, { nodes: updatedNodes });
    setEditingNode(null);
  };

  const deleteNode = async (nodeId) => {
    if (!currentMap) return;

    const node = currentMap.nodes.find(n => n.id === nodeId);
    if (node.level === 0) {
      alert('Não é possível deletar o nó principal');
      return;
    }

    const nodesToDelete = new Set([nodeId]);
    let changed = true;
    
    while (changed) {
      changed = false;
      currentMap.nodes.forEach(n => {
        if (n.parent && nodesToDelete.has(n.parent) && !nodesToDelete.has(n.id)) {
          nodesToDelete.add(n.id);
          changed = true;
        }
      });
    }

    const updatedNodes = currentMap.nodes.filter(n => !nodesToDelete.has(n.id));
    await updateMindMap(currentMap.id, { nodes: updatedNodes });
  };

  const handleNodeMouseDown = (e, node) => {
    if (editingNode === node.id || e.button === 2) return;
    
    e.stopPropagation();
    const rect = canvasRef.current.getBoundingClientRect();
    const x = (e.clientX - rect.left - canvasOffset.x) / zoom;
    const y = (e.clientY - rect.top - canvasOffset.y) / zoom;
    
    setDraggingNode(node.id);
    setDragOffset({ x: x - node.x, y: y - node.y });
    setSelectedNode(node.id);
  };

  const handleMouseMove = (e) => {
    if (isPanning) {
      const deltaX = e.clientX - panStart.x;
      const deltaY = e.clientY - panStart.y;
      setCanvasOffset({ x: canvasOffset.x + deltaX, y: canvasOffset.y + deltaY });
      setPanStart({ x: e.clientX, y: e.clientY });
    } else if (draggingNode && currentMap) {
      const rect = canvasRef.current.getBoundingClientRect();
      const x = (e.clientX - rect.left - canvasOffset.x) / zoom - dragOffset.x;
      const y = (e.clientY - rect.top - canvasOffset.y) / zoom - dragOffset.y;

      setMindMaps(prev => prev.map(map => {
        if (map.id === currentMap.id) {
          return {
            ...map,
            nodes: map.nodes.map(node =>
              node.id === draggingNode ? { ...node, x, y } : node
            )
          };
        }
        return map;
      }));
    }
  };

  const handleMouseUp = async () => {
    if (draggingNode && currentMap) {
      const updatedMap = mindMaps.find(m => m.id === currentMap.id);
      await updateMindMap(currentMap.id, { nodes: updatedMap.nodes });
    }
    
    setDraggingNode(null);
    setIsPanning(false);
  };

  const handleCanvasMouseDown = (e) => {
    if (e.button === 2) {
      e.preventDefault();
      setIsPanning(true);
      setPanStart({ x: e.clientX, y: e.clientY });
    }
  };

  const handleContextMenu = (e) => {
    e.preventDefault();
  };

  const currentMap = mindMaps[currentMapIndex];

  const getLevelColor = (level) => {
    const colors = [
      'bg-primary',
      'bg-success',
      'bg-warning',
      'bg-purple-500',
      'bg-pink-500'
    ];
    return colors[level % colors.length];
  };

  const handleZoomIn = () => setZoom(prev => Math.min(prev + 0.2, 2));
  const handleZoomOut = () => setZoom(prev => Math.max(prev - 0.2, 0.5));
  const handleResetZoom = () => {
    setZoom(1);
    setCanvasOffset({ x: 0, y: 0 });
  };

  const getConnections = () => {
    if (!currentMap) return [];
    return currentMap.nodes
      .filter(node => node.parent !== null)
      .map(node => {
        const parent = currentMap.nodes.find(n => n.id === node.parent);
        return parent ? { from: parent, to: node } : null;
      })
      .filter(Boolean);
  };

  const exportAsJSON = () => {
    if (!currentMap) return;
    const dataStr = JSON.stringify(currentMap, null, 2);
    const dataBlob = new Blob([dataStr], { type: 'application/json' });
    const url = URL.createObjectURL(dataBlob);
    const link = document.createElement('a');
    link.href = url;
    link.download = `${currentMap.title.replace(/\s+/g, '_')}.json`;
    link.click();
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="flex items-center justify-center py-20">
          <div className="text-center">
            <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary mx-auto"></div>
            <p className="mt-4 text-muted-foreground">Carregando mapas mentais...</p>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      
      <div className="container mx-auto px-3 sm:px-4 py-4 sm:py-6 md:py-8">
        {/* Header */}
        <div className="flex flex-col sm:flex-row items-start sm:items-center justify-between gap-3 sm:gap-4 mb-4 sm:mb-6">
          <div>
            <h1 className="text-xl sm:text-2xl font-bold text-foreground">Mapas Mentais</h1>
            <p className="text-xs sm:text-sm text-muted-foreground mt-1">
              Organize seu conhecimento para concursos
            </p>
          </div>
          <div className="flex gap-2 w-full sm:w-auto">
            <Button 
              onClick={() => setShowInstructions(!showInstructions)}
              variant="outline"
              size="sm"
              className="flex-1 sm:flex-none"
            >
              <Info className="w-4 h-4 sm:mr-2" />
              <span className="hidden sm:inline">Ajuda</span>
            </Button>
            <Button 
              onClick={() => setShowNewMapModal(true)}
              size="sm"
              className="flex-1 sm:flex-none"
            >
              <Plus className="w-4 h-4 sm:mr-2" />
              <span className="hidden sm:inline">Novo Mapa</span>
            </Button>
          </div>
        </div>

        {/* Instructions Alert */}
        {showInstructions && (
          <Alert className="mb-4">
            <Info className="h-4 w-4" />
            <AlertTitle>Como usar</AlertTitle>
            <AlertDescription className="text-xs sm:text-sm">
              <ul className="space-y-1 mt-2">
                <li>• Arraste os nós para reorganizar o mapa</li>
                <li>• Clique duas vezes em um nó para editar</li>
                <li>• Botão direito + arrastar para mover o canvas</li>
                <li>• Selecione um nó e use + para adicionar filhos</li>
              </ul>
            </AlertDescription>
          </Alert>
        )}

        {/* New Map Modal */}
        {showNewMapModal && (
          <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50 p-4">
            <Card className="w-full max-w-md p-4 sm:p-6">
              <div className="flex justify-between items-center mb-4">
                <h2 className="text-lg sm:text-xl font-bold">Novo Mapa Mental</h2>
                <Button 
                  variant="ghost" 
                  size="icon"
                  onClick={() => setShowNewMapModal(false)}
                >
                  <X className="w-4 h-4" />
                </Button>
              </div>
              <div className="space-y-4">
                <div>
                  <label className="block text-sm font-medium mb-1">Título</label>
                  <input
                    type="text"
                    value={newMapData.title}
                    onChange={(e) => setNewMapData({ ...newMapData, title: e.target.value })}
                    className="w-full px-3 py-2 border border-border rounded-lg bg-background focus:ring-2 focus:ring-primary focus:border-transparent text-sm"
                    placeholder="Ex: Direito Administrativo"
                  />
                </div>
                <div>
                  <label className="block text-sm font-medium mb-1">Matéria</label>
                  <input
                    type="text"
                    value={newMapData.subject}
                    onChange={(e) => setNewMapData({ ...newMapData, subject: e.target.value })}
                    className="w-full px-3 py-2 border border-border rounded-lg bg-background focus:ring-2 focus:ring-primary focus:border-transparent text-sm"
                    placeholder="Ex: Direito"
                  />
                </div>
                <Button onClick={handleCreateNewMap} className="w-full">
                  Criar Mapa
                </Button>
              </div>
            </Card>
          </div>
        )}

        {mindMaps.length === 0 ? (
          <Alert>
            <AlertTitle>Nenhum mapa encontrado</AlertTitle>
            <AlertDescription>
              Crie seu primeiro mapa mental clicando no botão "Novo Mapa"
            </AlertDescription>
          </Alert>
        ) : (
          <div className="grid grid-cols-1 lg:grid-cols-4 gap-4 sm:gap-6">
            {/* Sidebar - Maps List */}
            <div className="lg:col-span-1 space-y-4">
              <Card className="p-3 sm:p-4">
                <h2 className="font-semibold text-sm sm:text-base mb-3">Meus Mapas</h2>
                <div className="space-y-2 max-h-[300px] lg:max-h-none overflow-y-auto">
                  {mindMaps.map((map, index) => (
                    <button
                      key={map.id}
                      onClick={() => setCurrentMapIndex(index)}
                      className={`w-full text-left p-2 sm:p-3 rounded-lg transition-all ${
                        currentMapIndex === index
                          ? 'bg-primary/10 border-2 border-primary'
                          : 'bg-muted border-2 border-transparent hover:bg-muted/80'
                      }`}
                    >
                      <div className="font-medium text-xs sm:text-sm">{map.title}</div>
                      <div className="text-xs text-muted-foreground mt-1">{map.subject}</div>
                      <Badge variant="secondary" className="text-xs mt-1">
                        {map.nodes.length} nós
                      </Badge>
                    </button>
                  ))}
                </div>
              </Card>

              {/* Controls */}
              <Card className="p-3 sm:p-4">
                <h3 className="font-semibold text-sm mb-3">Controles</h3>
                <div className="grid grid-cols-2 lg:grid-cols-1 gap-2">
                  <Button onClick={handleZoomIn} variant="outline" size="sm" className="w-full text-xs sm:text-sm">
                    <Plus className="w-3 h-3 sm:w-4 sm:h-4 mr-1 sm:mr-2" />
                    Ampliar
                  </Button>
                  <Button onClick={handleZoomOut} variant="outline" size="sm" className="w-full text-xs sm:text-sm">
                    <Minus className="w-3 h-3 sm:w-4 sm:h-4 mr-1 sm:mr-2" />
                    Reduzir
                  </Button>
                  <Button onClick={handleResetZoom} variant="outline" size="sm" className="w-full text-xs sm:text-sm">
                    <Home className="w-3 h-3 sm:w-4 sm:h-4 mr-1 sm:mr-2" />
                    Resetar
                  </Button>
                  <Button onClick={exportAsJSON} variant="outline" size="sm" className="w-full text-xs sm:text-sm">
                    <Download className="w-3 h-3 sm:w-4 sm:h-4 mr-1 sm:mr-2" />
                    Exportar
                  </Button>
                </div>
              </Card>
            </div>

            {/* Main Canvas */}
            <div className="lg:col-span-3">
              {currentMap && (
                <Card className="overflow-hidden">
                  <div className="bg-muted border-b px-3 sm:px-4 py-2 sm:py-3 flex items-center justify-between">
                    <div>
                      <h2 className="font-semibold text-sm sm:text-base">{currentMap.title}</h2>
                      <p className="text-xs text-muted-foreground">{currentMap.subject}</p>
                    </div>
                    <Button 
                      variant="ghost"
                      size="icon"
                      onClick={() => deleteMindMap(currentMap.id)}
                      className="hover:bg-destructive/10"
                    >
                      <Trash2 className="w-4 h-4 text-destructive" />
                    </Button>
                  </div>

                  <div 
                    ref={canvasRef}
                    className="relative bg-muted/30 overflow-hidden select-none"
                    style={{ 
                      height: '400px',
                      minHeight: '400px',
                      cursor: isPanning ? 'grabbing' : draggingNode ? 'grabbing' : 'default' 
                    }}
                    onMouseDown={handleCanvasMouseDown}
                    onMouseMove={handleMouseMove}
                    onMouseUp={handleMouseUp}
                    onMouseLeave={handleMouseUp}
                    onContextMenu={handleContextMenu}
                  >
                    <div
                      className="absolute"
                      style={{
                        transform: `translate(${canvasOffset.x}px, ${canvasOffset.y}px) scale(${zoom})`,
                        transformOrigin: '0 0',
                        transition: draggingNode || isPanning ? 'none' : 'transform 0.3s ease',
                        width: '2000px',
                        height: '2000px'
                      }}
                    >
                      <svg className="absolute inset-0 w-full h-full pointer-events-none">
                        {getConnections().map((conn, idx) => (
                          <line
                            key={idx}
                            x1={conn.from.x}
                            y1={conn.from.y}
                            x2={conn.to.x}
                            y2={conn.to.y}
                            stroke="hsl(var(--muted-foreground))"
                            strokeWidth="2"
                            strokeDasharray="5,5"
                            opacity="0.5"
                          />
                        ))}
                      </svg>

                      {currentMap.nodes.map((node) => (
                        <div
                          key={node.id}
                          onMouseDown={(e) => handleNodeMouseDown(e, node)}
                          onDoubleClick={() => setEditingNode(node.id)}
                          className={`absolute transform -translate-x-1/2 -translate-y-1/2 transition-all ${
                            draggingNode === node.id ? 'cursor-grabbing z-20' : 'cursor-grab'
                          } ${selectedNode === node.id && !draggingNode ? 'scale-110 z-10' : 'hover:scale-105'}`}
                          style={{
                            left: `${node.x}px`,
                            top: `${node.y}px`,
                          }}
                        >
                          {editingNode === node.id ? (
                            <input
                              type="text"
                              defaultValue={node.text}
                              onBlur={(e) => updateNodeText(node.id, e.target.value)}
                              onKeyDown={(e) => {
                                if (e.key === 'Enter') updateNodeText(node.id, (e.target as HTMLInputElement).value);
                                if (e.key === 'Escape') setEditingNode(null);
                              }}
                              autoFocus
                              className="px-3 py-2 rounded-lg text-xs sm:text-sm font-medium border-2 border-primary bg-background"
                              style={{ minWidth: '120px' }}
                            />
                          ) : (
                            <>
                              <div
                                className={`${getLevelColor(node.level)} text-white px-3 py-2 rounded-lg shadow-lg ${
                                  node.level === 0 ? 'text-sm sm:text-base font-bold' : 'text-xs sm:text-sm font-medium'
                                } ${selectedNode === node.id ? 'ring-4 ring-warning' : ''}`}
                                style={{
                                  minWidth: node.level === 0 ? '150px' : '120px',
                                  textAlign: 'center'
                                }}
                              >
                                {node.text}
                              </div>
                              {selectedNode === node.id && !draggingNode && (
                                <div className="absolute -bottom-8 left-1/2 transform -translate-x-1/2 flex gap-1 bg-card rounded-lg shadow-lg p-1 border">
                                  <button
                                    onClick={(e) => {
                                      e.stopPropagation();
                                      addNode(node.id);
                                    }}
                                    className="p-1 hover:bg-success/20 rounded text-success"
                                    title="Adicionar filho"
                                  >
                                    <Plus className="w-3 h-3 sm:w-4 sm:h-4" />
                                  </button>
                                  {node.level > 0 && (
                                    <button
                                      onClick={(e) => {
                                        e.stopPropagation();
                                        deleteNode(node.id);
                                      }}
                                      className="p-1 hover:bg-destructive/20 rounded text-destructive"
                                      title="Deletar"
                                    >
                                      <Trash2 className="w-3 h-3 sm:w-4 sm:h-4" />
                                    </button>
                                  )}
                                </div>
                              )}
                            </>
                          )}
                        </div>
                      ))}
                    </div>

                    <div className="absolute bottom-2 sm:bottom-4 right-2 sm:right-4 bg-card px-2 sm:px-3 py-1 rounded-full shadow-md text-xs sm:text-sm text-muted-foreground border">
                      {Math.round(zoom * 100)}%
                    </div>
                  </div>
                </Card>
              )}
            </div>
          </div>
        )}
      </div>
    </div>
  );
};

export default MindMapViewer;