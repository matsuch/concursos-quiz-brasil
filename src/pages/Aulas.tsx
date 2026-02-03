import { useState, useEffect } from 'react';
import Navbar from "@/components/Navbar";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Play, CheckCircle, Clock, Book, ChevronRight, ChevronDown, Award, Loader2 } from 'lucide-react';
import { cn } from "@/lib/utils";
import { supabase } from "@/integrations/supabase/client";
import { useAuth } from "@/hooks/useAuth";
import { toast } from "sonner";

interface Video {
  id: string;
  title: string;
  duration: string;
  url: string;
  order_index: number;
  module_id: string;
}

interface Module {
  id: string;
  title: string;
  order_index: number;
  course_id: string;
  videos: Video[];
}

interface Course {
  id: string;
  title: string;
  description: string;
  created_at: string;
  modules: Module[];
}

const Aulas = () => {
  const { user } = useAuth();
  const [courses, setCourses] = useState<Course[]>([]);
  const [selectedCourse, setSelectedCourse] = useState<Course | null>(null);
  const [selectedVideo, setSelectedVideo] = useState<Video | null>(null);
  const [expandedModules, setExpandedModules] = useState<{ [key: string]: boolean }>({});
  const [completedVideos, setCompletedVideos] = useState<string[]>([]);
  const [loading, setLoading] = useState(true);
  const [savingProgress, setSavingProgress] = useState(false);

  // Carregar cursos do Supabase
  useEffect(() => {
    fetchCourses();
  }, []);

  // Carregar progresso do usuário
  useEffect(() => {
    if (user) {
      fetchUserProgress();
    }
  }, [user]);

  const fetchCourses = async () => {
    try {
      setLoading(true);

      // Buscar cursos
      const { data: coursesData, error: coursesError } = await supabase
        .from('courses')
        .select('*')
        .order('created_at', { ascending: true });

      if (coursesError) throw coursesError;

      // Buscar módulos
      const { data: modulesData, error: modulesError } = await supabase
        .from('modules')
        .select('*')
        .order('order_index', { ascending: true });

      if (modulesError) throw modulesError;

      // Buscar vídeos
      const { data: videosData, error: videosError } = await supabase
        .from('videos')
        .select('*')
        .order('order_index', { ascending: true });

      if (videosError) throw videosError;

      // Organizar dados em estrutura hierárquica
      const coursesWithModules = (coursesData || []).map(course => {
        const courseModules = (modulesData || [])
          .filter(module => module.course_id === course.id)
          .map(module => ({
            ...module,
            videos: (videosData || []).filter(video => video.module_id === module.id)
          }));

        return {
          ...course,
          modules: courseModules
        };
      });

      setCourses(coursesWithModules);
    } catch (error) {
      console.error('Erro ao carregar cursos:', error);
      toast.error('Erro ao carregar cursos');
    } finally {
      setLoading(false);
    }
  };

  const fetchUserProgress = async () => {
    if (!user) return;

    try {
      const { data, error } = await supabase
        .from('user_progress')
        .select('video_id')
        .eq('user_id', user.id)
        .eq('completed', true);

      if (error) throw error;

      setCompletedVideos((data || []).map(item => item.video_id));
    } catch (error) {
      console.error('Erro ao carregar progresso:', error);
    }
  };

  const toggleModule = (moduleId: string) => {
    setExpandedModules(prev => ({
      ...prev,
      [moduleId]: !prev[moduleId]
    }));
  };

  const markAsCompleted = async (videoId: string) => {
    if (!user) {
      toast.error('Faça login para salvar seu progresso');
      return;
    }

    if (completedVideos.includes(videoId)) {
      return;
    }

    try {
      setSavingProgress(true);

      const { error } = await supabase
        .from('user_progress')
        .upsert({
          user_id: user.id,
          video_id: videoId,
          completed: true,
          completed_at: new Date().toISOString()
        }, {
          onConflict: 'user_id,video_id'
        });

      if (error) throw error;

      setCompletedVideos([...completedVideos, videoId]);
      toast.success('Vídeo marcado como completo!');
    } catch (error) {
      console.error('Erro ao salvar progresso:', error);
      toast.error('Erro ao salvar progresso');
    } finally {
      setSavingProgress(false);
    }
  };

  const getCourseProgress = (course: Course) => {
    const totalVideos = course.modules.reduce((acc, m) => acc + m.videos.length, 0);
    const completedCount = course.modules.reduce((acc, m) => 
      acc + m.videos.filter(v => completedVideos.includes(v.id)).length, 0
    );
    return totalVideos > 0 ? Math.round((completedCount / totalVideos) * 100) : 0;
  };

  const totalCompletedVideos = courses.reduce((acc, course) => 
    acc + course.modules.reduce((modAcc, module) => 
      modAcc + module.videos.filter(v => completedVideos.includes(v.id)).length, 0
    ), 0
  );

  // Loading state
  if (loading) {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-20 text-center">
          <Loader2 className="w-12 h-12 animate-spin mx-auto mb-4 text-primary" />
          <p className="text-muted-foreground">Carregando cursos...</p>
        </div>
      </div>
    );
  }

  // View: Lista de Cursos
  if (!selectedCourse) {
    return (
      <div className="min-h-screen bg-background">
        <Navbar />
        <div className="container mx-auto px-4 py-6 sm:py-10">
          {/* Header */}
          <div className="mb-6 sm:mb-8">
            <h1 className="text-3xl sm:text-4xl font-bold text-foreground mb-2">
              Aulas
            </h1>
            <p className="text-base sm:text-lg text-muted-foreground">
              Aprenda no seu ritmo com nossos cursos em vídeo
            </p>
          </div>

          {/* Stats */}
          <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 mb-6 sm:mb-8">
            <Card className="p-4 sm:p-6">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-muted-foreground text-sm">Cursos Disponíveis</p>
                  <p className="text-2xl sm:text-3xl font-bold text-primary">{courses.length}</p>
                </div>
                <Book className="w-10 h-10 sm:w-12 sm:h-12 text-primary opacity-50" />
              </div>
            </Card>
            
            <Card className="p-4 sm:p-6">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-muted-foreground text-sm">Vídeos Completos</p>
                  <p className="text-2xl sm:text-3xl font-bold text-success">{totalCompletedVideos}</p>
                </div>
                <CheckCircle className="w-10 h-10 sm:w-12 sm:h-12 text-success opacity-50" />
              </div>
            </Card>
            
            <Card className="p-4 sm:p-6">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-muted-foreground text-sm">Certificados</p>
                  <p className="text-2xl sm:text-3xl font-bold text-secondary">0</p>
                </div>
                <Award className="w-10 h-10 sm:w-12 sm:h-12 text-secondary opacity-50" />
              </div>
            </Card>
          </div>

          {/* Course Cards */}
          {courses.length === 0 ? (
            <Card className="p-8 text-center">
              <Book className="w-16 h-16 mx-auto mb-4 text-muted-foreground opacity-50" />
              <h3 className="text-xl font-semibold mb-2">Nenhum curso disponível</h3>
              <p className="text-muted-foreground">
                Novos cursos serão adicionados em breve!
              </p>
            </Card>
          ) : (
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 sm:gap-6">
              {courses.map(course => {
                const progress = getCourseProgress(course);
                const totalVideos = course.modules.reduce((acc, m) => acc + m.videos.length, 0);
                
                return (
                  <Card 
                    key={course.id}
                    className="overflow-hidden hover:shadow-lg transition-shadow cursor-pointer"
                    onClick={() => {
                      setSelectedCourse(course);
                      // Auto-expandir primeiro módulo
                      if (course.modules.length > 0) {
                        setExpandedModules({ [course.modules[0].id]: true });
                      }
                    }}
                  >
                    <div className="bg-gradient-to-r from-primary to-secondary h-24 sm:h-32 flex items-center justify-center">
                      <Play className="w-12 h-12 sm:w-16 sm:h-16 text-white opacity-80" />
                    </div>
                    
                    <div className="p-4 sm:p-6">
                      <h3 className="text-lg sm:text-xl font-bold text-foreground mb-2">
                        {course.title}
                      </h3>
                      <p className="text-muted-foreground text-sm mb-4">
                        {course.description}
                      </p>
                      
                      <div className="mb-4">
                        <div className="flex justify-between text-sm mb-1">
                          <span className="text-muted-foreground">Progresso</span>
                          <span className="font-semibold text-primary">{progress}%</span>
                        </div>
                        <div className="w-full bg-muted rounded-full h-2">
                          <div 
                            className="bg-primary h-2 rounded-full transition-all"
                            style={{ width: `${progress}%` }}
                          />
                        </div>
                      </div>
                      
                      <div className="flex items-center justify-between text-sm text-muted-foreground">
                        <div className="flex items-center gap-1">
                          <Play className="w-4 h-4" />
                          <span>{totalVideos} vídeos</span>
                        </div>
                        <span className="text-primary font-semibold flex items-center gap-1">
                          {progress > 0 ? 'Continuar' : 'Começar'}
                          <ChevronRight className="w-4 h-4" />
                        </span>
                      </div>
                    </div>
                  </Card>
                );
              })}
            </div>
          )}

          {!user && (
            <Card className="mt-8 p-6 bg-primary/5 border-primary/20">
              <p className="text-center text-muted-foreground">
                💡 Faça login para salvar seu progresso e acompanhar sua evolução!
              </p>
            </Card>
          )}
        </div>
      </div>
    );
  }

  // View: Curso Selecionado
  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      
      {/* Header */}
      <div className="bg-card border-b">
        <div className="container mx-auto px-4 py-4">
          <Button 
            variant="ghost"
            onClick={() => {
              setSelectedCourse(null);
              setSelectedVideo(null);
            }}
            className="mb-2 text-primary hover:text-primary/80"
          >
            ← Voltar aos Cursos
          </Button>
          <h1 className="text-2xl sm:text-3xl font-bold text-foreground">
            {selectedCourse.title}
          </h1>
          <p className="text-muted-foreground text-sm sm:text-base">{selectedCourse.description}</p>
        </div>
      </div>

      <div className="container mx-auto px-4 py-4 sm:py-6">
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-4 sm:gap-6">
          {/* Video Player */}
          <div className="lg:col-span-2">
            <Card className="overflow-hidden">
              {selectedVideo ? (
                <>
                  <div className="aspect-video bg-black">
                    <iframe
                      className="w-full h-full"
                      src={selectedVideo.url}
                      title={selectedVideo.title}
                      frameBorder="0"
                      allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                      allowFullScreen
                    />
                  </div>
                  <div className="p-4 sm:p-6">
                    <h2 className="text-xl sm:text-2xl font-bold text-foreground mb-2">
                      {selectedVideo.title}
                    </h2>
                    <div className="flex items-center gap-4 text-sm text-muted-foreground mb-4">
                      <div className="flex items-center gap-1">
                        <Clock className="w-4 h-4" />
                        <span>{selectedVideo.duration}</span>
                      </div>
                      {completedVideos.includes(selectedVideo.id) && (
                        <div className="flex items-center gap-1 text-success">
                          <CheckCircle className="w-4 h-4" />
                          <span>Completo</span>
                        </div>
                      )}
                    </div>
                    
                    <Button
                      onClick={() => markAsCompleted(selectedVideo.id)}
                      disabled={completedVideos.includes(selectedVideo.id) || savingProgress}
                      className={cn(
                        "w-full",
                        completedVideos.includes(selectedVideo.id) && "opacity-50 cursor-not-allowed"
                      )}
                    >
                      {savingProgress ? (
                        <>
                          <Loader2 className="w-4 h-4 mr-2 animate-spin" />
                          Salvando...
                        </>
                      ) : completedVideos.includes(selectedVideo.id) ? (
                        '✓ Marcado como Completo'
                      ) : (
                        'Marcar como Completo'
                      )}
                    </Button>
                  </div>
                </>
              ) : (
                <div className="aspect-video bg-gradient-to-br from-primary to-secondary flex items-center justify-center">
                  <div className="text-center text-white p-4">
                    <Play className="w-16 h-16 sm:w-24 sm:h-24 mx-auto mb-4 opacity-80" />
                    <p className="text-lg sm:text-xl">Selecione um vídeo para começar</p>
                  </div>
                </div>
              )}
            </Card>
          </div>

          {/* Modules Sidebar */}
          <div className="lg:col-span-1">
            <Card className="p-4 sticky top-4">
              <h3 className="text-base sm:text-lg font-bold text-foreground mb-4">
                Conteúdo do Curso
              </h3>
              
              <div className="space-y-2">
                {selectedCourse.modules.length === 0 ? (
                  <p className="text-sm text-muted-foreground text-center py-8">
                    Nenhum módulo disponível neste curso ainda.
                  </p>
                ) : (
                  selectedCourse.modules.map(module => {
                    const isExpanded = expandedModules[module.id];
                    const moduleCompleted = module.videos.length > 0 && module.videos.every(v => 
                      completedVideos.includes(v.id)
                    );
                    
                    return (
                      <div key={module.id} className="border rounded-lg overflow-hidden">
                        <button
                          onClick={() => toggleModule(module.id)}
                          className="w-full px-4 py-3 bg-muted hover:bg-muted/80 flex items-center justify-between transition-colors"
                        >
                          <div className="flex items-center gap-2">
                            {moduleCompleted ? (
                              <CheckCircle className="w-5 h-5 text-success" />
                            ) : (
                              <Book className="w-5 h-5 text-muted-foreground" />
                            )}
                            <span className="font-semibold text-foreground text-sm">
                              {module.title}
                            </span>
                          </div>
                          {isExpanded ? (
                            <ChevronDown className="w-5 h-5 text-muted-foreground" />
                          ) : (
                            <ChevronRight className="w-5 h-5 text-muted-foreground" />
                          )}
                        </button>
                        
                        {isExpanded && (
                          <div className="bg-card">
                            {module.videos.length === 0 ? (
                              <p className="text-xs text-muted-foreground text-center py-4">
                                Nenhum vídeo neste módulo
                              </p>
                            ) : (
                              module.videos.map(video => {
                                const isCompleted = completedVideos.includes(video.id);
                                const isActive = selectedVideo?.id === video.id;
                                
                                return (
                                  <button
                                    key={video.id}
                                    onClick={() => setSelectedVideo(video)}
                                    className={cn(
                                      "w-full px-4 py-3 text-left hover:bg-muted/50 transition-colors border-t",
                                      isActive && "bg-primary/10 border-l-4 border-l-primary"
                                    )}
                                  >
                                    <div className="flex items-center justify-between">
                                      <div className="flex items-center gap-2 flex-1">
                                        {isCompleted ? (
                                          <CheckCircle className="w-4 h-4 text-success flex-shrink-0" />
                                        ) : (
                                          <Play className="w-4 h-4 text-muted-foreground flex-shrink-0" />
                                        )}
                                        <span className={cn(
                                          "text-sm",
                                          isActive ? "text-primary font-semibold" : "text-foreground"
                                        )}>
                                          {video.title}
                                        </span>
                                      </div>
                                      <span className="text-xs text-muted-foreground">
                                        {video.duration}
                                      </span>
                                    </div>
                                  </button>
                                );
                              })
                            )}
                          </div>
                        )}
                      </div>
                    );
                  })
                )}
              </div>
              
              {/* Progress Summary */}
              <div className="mt-6 p-4 bg-primary/10 rounded-lg">
                <div className="flex items-center justify-between mb-2">
                  <span className="text-sm font-semibold text-foreground">
                    Progresso Total
                  </span>
                  <span className="text-lg font-bold text-primary">
                    {getCourseProgress(selectedCourse)}%
                  </span>
                </div>
                <div className="w-full bg-primary/20 rounded-full h-2">
                  <div 
                    className="bg-primary h-2 rounded-full transition-all"
                    style={{ width: `${getCourseProgress(selectedCourse)}%` }}
                  />
                </div>
              </div>
            </Card>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Aulas;
