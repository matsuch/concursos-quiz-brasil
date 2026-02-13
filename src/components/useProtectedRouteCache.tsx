import { useCallback } from 'react';

/**
 * Hook para gerenciar manualmente o cache de validação do ProtectedRoute
 * Útil para casos onde você precisa invalidar o cache programaticamente
 */

interface CacheEntry {
  hasAccess: boolean;
  timestamp: number;
  requiredPlanName: string | null;
}

// Referência ao cache global (mesmo do ProtectedRoute)
declare global {
  interface Window {
    __protectedRouteCache?: Map<string, CacheEntry>;
  }
}

export function useProtectedRouteCache() {
  /**
   * Limpa todo o cache de validação
   * Útil após mudanças de assinatura
   */
  const clearAllCache = useCallback(() => {
    if (window.__protectedRouteCache) {
      window.__protectedRouteCache.clear();
      console.log('✅ Cache de validação limpo');
    }
  }, []);

  /**
   * Limpa cache de uma rota específica
   * @param pathname - Caminho da rota (ex: '/planner')
   */
  const clearRouteCache = useCallback((pathname: string) => {
    if (!window.__protectedRouteCache) return;

    const keysToDelete: string[] = [];
    window.__protectedRouteCache.forEach((_, key) => {
      if (key.startsWith(pathname)) {
        keysToDelete.push(key);
      }
    });

    keysToDelete.forEach(key => {
      window.__protectedRouteCache?.delete(key);
    });

    console.log(`✅ Cache limpo para ${pathname} (${keysToDelete.length} entradas)`);
  }, []);

  /**
   * Obtém informações sobre o cache
   * @returns Estatísticas do cache
   */
  const getCacheStats = useCallback(() => {
    if (!window.__protectedRouteCache) {
      return {
        totalEntries: 0,
        validEntries: 0,
        expiredEntries: 0,
        routes: []
      };
    }

    const now = Date.now();
    const cacheTime = 5 * 60 * 1000; // 5 minutos
    let validEntries = 0;
    let expiredEntries = 0;
    const routes = new Set<string>();

    window.__protectedRouteCache.forEach((entry, key) => {
      const isValid = now - entry.timestamp < cacheTime;
      if (isValid) {
        validEntries++;
      } else {
        expiredEntries++;
      }
      
      // Extrai a rota da chave (formato: /rota-userId-requisitos)
      const route = key.split('-')[0];
      routes.add(route);
    });

    return {
      totalEntries: window.__protectedRouteCache.size,
      validEntries,
      expiredEntries,
      routes: Array.from(routes)
    };
  }, []);

  /**
   * Força revalidação de todas as rotas protegidas
   * Remove entradas expiradas do cache
   */
  const pruneExpiredCache = useCallback(() => {
    if (!window.__protectedRouteCache) return 0;

    const now = Date.now();
    const cacheTime = 5 * 60 * 1000;
    const keysToDelete: string[] = [];

    window.__protectedRouteCache.forEach((entry, key) => {
      if (now - entry.timestamp >= cacheTime) {
        keysToDelete.push(key);
      }
    });

    keysToDelete.forEach(key => {
      window.__protectedRouteCache?.delete(key);
    });

    console.log(`🧹 ${keysToDelete.length} entradas expiradas removidas`);
    return keysToDelete.length;
  }, []);

  /**
   * Verifica se uma rota tem cache válido
   * @param pathname - Caminho da rota
   * @param userId - ID do usuário (opcional)
   */
  const hasValidCache = useCallback((pathname: string, userId?: string) => {
    if (!window.__protectedRouteCache) return false;

    const now = Date.now();
    const cacheTime = 5 * 60 * 1000;

    for (const [key, entry] of window.__protectedRouteCache.entries()) {
      const matchesRoute = key.startsWith(pathname);
      const matchesUser = !userId || key.includes(userId);
      const isValid = now - entry.timestamp < cacheTime;

      if (matchesRoute && matchesUser && isValid) {
        return true;
      }
    }

    return false;
  }, []);

  return {
    clearAllCache,
    clearRouteCache,
    getCacheStats,
    pruneExpiredCache,
    hasValidCache
  };
}