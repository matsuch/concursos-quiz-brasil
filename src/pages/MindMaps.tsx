import { useState, useEffect, useRef } from 'react';
import { Plus, Minus, Home, Download, Trash2, X } from 'lucide-react';
import { supabase } from "@/integrations/supabase/client";
import Navbar from "@/components/Navbar";

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
  const canvasRef = useRef(null);

  useEffect(() => {
    loadMindMaps();
  }, []);

  // Zoom com scroll do mouse
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
      
      // Atualizar localmente sem reload
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
      
      // Atualizar localmente sem reload
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
      
      // Atualizar localmente sem reload
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

    // Deletar recursivamente todos os filhos
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

  // Arrastar nós
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

      // Atualizar posição localmente (sem salvar ainda)
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
      // Salvar posição final no Supabase
      const updatedMap = mindMaps.find(m => m.id === currentMap.id);
      await updateMindMap(currentMap.id, { nodes: updatedMap.nodes });
    }
    
    setDraggingNode(null);
    setIsPanning(false);
  };

  // Pan com botão direito
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
      'bg-blue-500',
      'bg-green-500',
      'bg-purple-500',
      'bg-orange-500',
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
      <div className="min-h-screen bg-gradient-to-br from-slate-50 to-slate-100 flex items-center justify-center">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600 mx-auto"></div>
          <p className="mt-4 text-slate-600">Carregando mapas mentais...</p>
        </div>
      </div>
    );
  }

  return (
    
    <div className="min-h-screen bg-gradient-to-br from-slate-50 to-slate-100">
      <Navbar />
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4">
          <div className="flex items-center justify-between">
            <div>
              <h1 className="text-2xl font-bold text-slate-900">Mapas Mentais</h1>
              <p className="text-sm text-slate-600 mt-1">Organize seu conhecimento para concursos</p>
            </div>
            <button 
              onClick={() => setShowNewMapModal(true)}
              className="px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors flex items-center gap-2"
            >
              <Plus className="w-4 h-4" />
              Novo Mapa
            </button>
          </div>
      </div>

      {showNewMapModal && (
        <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
          <div className="bg-white rounded-xl p-6 w-full max-w-md">
            <div className="flex justify-between items-center mb-4">
              <h2 className="text-xl font-bold text-slate-900">Novo Mapa Mental</h2>
              <button onClick={() => setShowNewMapModal(false)}>
                <X className="w-5 h-5 text-slate-600" />
              </button>
            </div>
            <div className="space-y-4">
              <div>
                <label className="block text-sm font-medium text-slate-700 mb-1">Título</label>
                <input
                  type="text"
                  value={newMapData.title}
                  onChange={(e) => setNewMapData({ ...newMapData, title: e.target.value })}
                  className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                  placeholder="Ex: Direito Administrativo"
                />
              </div>
              <div>
                <label className="block text-sm font-medium text-slate-700 mb-1">Matéria</label>
                <input
                  type="text"
                  value={newMapData.subject}
                  onChange={(e) => setNewMapData({ ...newMapData, subject: e.target.value })}
                  className="w-full px-3 py-2 border border-slate-300 rounded-lg focus:ring-2 focus:ring-blue-500 focus:border-transparent"
                  placeholder="Ex: Direito"
                />
              </div>
              <button
                onClick={handleCreateNewMap}
                className="w-full px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors"
              >
                Criar Mapa
              </button>
            </div>
          </div>
        </div>
      )}

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        {mindMaps.length === 0 ? (
          <div className="text-center py-12">
            <p className="text-slate-600">Nenhum mapa mental encontrado. Crie seu primeiro mapa!</p>
          </div>
        ) : (
          <div className="grid grid-cols-1 lg:grid-cols-4 gap-6">
            <div className="lg:col-span-1">
              <div className="bg-white rounded-xl shadow-sm border border-slate-200 p-4">
                <h2 className="font-semibold text-slate-900 mb-4">Meus Mapas</h2>
                <div className="space-y-2">
                  {mindMaps.map((map, index) => (
                    <button
                      key={map.id}
                      onClick={() => setCurrentMapIndex(index)}
                      className={`w-full text-left p-3 rounded-lg transition-all ${
                        currentMapIndex === index
                          ? 'bg-blue-50 border-2 border-blue-500'
                          : 'bg-slate-50 border-2 border-transparent hover:bg-slate-100'
                      }`}
                    >
                      <div className="font-medium text-slate-900 text-sm">{map.title}</div>
                      <div className="text-xs text-slate-600 mt-1">{map.subject}</div>
                      <div className="text-xs text-slate-500 mt-1">{map.nodes.length} nós</div>
                    </button>
                  ))}
                </div>
              </div>

              <div className="bg-white rounded-xl shadow-sm border border-slate-200 p-4 mt-4">
                <h3 className="font-semibold text-slate-900 mb-3 text-sm">Controles</h3>
                <div className="space-y-2">
                  <button
                    onClick={handleZoomIn}
                    className="w-full flex items-center gap-2 px-3 py-2 bg-slate-100 hover:bg-slate-200 rounded-lg transition-colors text-sm"
                  >
                    <Plus className="w-4 h-4" />
                    Ampliar
                  </button>
                  <button
                    onClick={handleZoomOut}
                    className="w-full flex items-center gap-2 px-3 py-2 bg-slate-100 hover:bg-slate-200 rounded-lg transition-colors text-sm"
                  >
                    <Minus className="w-4 h-4" />
                    Reduzir
                  </button>
                  <button
                    onClick={handleResetZoom}
                    className="w-full flex items-center gap-2 px-3 py-2 bg-slate-100 hover:bg-slate-200 rounded-lg transition-colors text-sm"
                  >
                    <Home className="w-4 h-4" />
                    Resetar
                  </button>
                  <button 
                    onClick={exportAsJSON}
                    className="w-full flex items-center gap-2 px-3 py-2 bg-green-100 hover:bg-green-200 text-green-700 rounded-lg transition-colors text-sm"
                  >
                    <Download className="w-4 h-4" />
                    Exportar JSON
                  </button>
                </div>
              </div>
            </div>

            <div className="lg:col-span-3">
              {currentMap && (
                <div className="bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden">
                  <div className="bg-slate-50 border-b border-slate-200 px-4 py-3 flex items-center justify-between">
                    <div>
                      <h2 className="font-semibold text-slate-900">{currentMap.title}</h2>
                      <p className="text-xs text-slate-600">{currentMap.subject}</p>
                    </div>
                    <button 
                      onClick={() => deleteMindMap(currentMap.id)}
                      className="p-2 hover:bg-red-100 rounded-lg transition-colors"
                    >
                      <Trash2 className="w-4 h-4 text-red-600" />
                    </button>
                  </div>

                  <div 
                    ref={canvasRef}
                    className="relative bg-slate-50 overflow-hidden select-none"
                    style={{ height: '600px', cursor: isPanning ? 'grabbing' : draggingNode ? 'grabbing' : 'default' }}
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
                            stroke="#94a3b8"
                            strokeWidth="2"
                            strokeDasharray="5,5"
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
                              className="px-4 py-2 rounded-lg text-sm font-medium border-2 border-blue-500"
                              style={{ minWidth: '150px' }}
                            />
                          ) : (
                            <>
                              <div
                                className={`${getLevelColor(node.level)} text-white px-4 py-2 rounded-lg shadow-lg ${
                                  node.level === 0 ? 'text-lg font-bold' : 'text-sm font-medium'
                                } ${selectedNode === node.id ? 'ring-4 ring-yellow-400' : ''}`}
                                style={{
                                  minWidth: node.level === 0 ? '200px' : '150px',
                                  textAlign: 'center'
                                }}
                              >
                                {node.text}
                              </div>
                              {selectedNode === node.id && !draggingNode && (
                                <div className="absolute -bottom-8 left-1/2 transform -translate-x-1/2 flex gap-1 bg-white rounded-lg shadow-lg p-1">
                                  <button
                                    onClick={(e) => {
                                      e.stopPropagation();
                                      addNode(node.id);
                                    }}
                                    className="p-1 hover:bg-green-100 rounded text-green-600"
                                    title="Adicionar filho"
                                  >
                                    <Plus className="w-4 h-4" />
                                  </button>
                                  {node.level > 0 && (
                                    <button
                                      onClick={(e) => {
                                        e.stopPropagation();
                                        deleteNode(node.id);
                                      }}
                                      className="p-1 hover:bg-red-100 rounded text-red-600"
                                      title="Deletar"
                                    >
                                      <Trash2 className="w-4 h-4" />
                                    </button>
                                  )}
                                </div>
                              )}
                            </>
                          )}
                        </div>
                      ))}
                    </div>

                    <div className="absolute bottom-4 right-4 bg-white px-3 py-1 rounded-full shadow-md text-sm text-slate-600">
                      {Math.round(zoom * 100)}%
                    </div>
                  </div>
                </div>
              )}

              <div className="bg-white rounded-xl shadow-sm border border-slate-200 p-4 mt-4">
                <h3 className="font-semibold text-slate-900 mb-3 text-sm">Instruções</h3>
                <ul className="text-xs text-slate-600 space-y-1">
                  <li>• Arraste os nós para reorganizar o mapa</li>
                  <li>• Clique duas vezes em um nó para editar o texto</li>
                  <li>• Use os botões para ampliar/reduzir</li>
                  <li>• Mantenha o botão direito pressionado para mover o canvas</li>
                  <li>• Selecione um nó e use + para adicionar filhos</li>
                </ul>
              </div>
            </div>
          </div>
        )}
      </div>
    </div>
  );
};

export default MindMapViewer;