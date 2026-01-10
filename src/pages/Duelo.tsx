import { useState } from "react";
import Navbar from "@/components/Navbar";
import { Card } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Swords, User, Users, Zap } from "lucide-react";
import SoloChallenge from "@/components/duelo/SoloChallenge";
import OnlineDuel from "@/components/duelo/OnlineDuel";
import { PremiumGate } from "@/components/PremiumGate";

type GameMode = 'select' | 'solo' | 'duel';

const Duelo = () => {
  const [mode, setMode] = useState<GameMode>('select');

  if (mode === 'solo') {
    return <SoloChallenge onBack={() => setMode('select')} />;
  }

  if (mode === 'duel') {
    return <OnlineDuel onBack={() => setMode('select')} />;
  }

  return (
    <div className="min-h-screen bg-background">
      <Navbar />
      <PremiumGate 
        feature="duelo"
        title="Modo Duelo"
        description="O modo duelo está disponível a partir do plano Padrão. Enfrente outros jogadores e suba no ranking!"
      >
        <div className="container mx-auto px-4 py-10 sm:py-20">
          <div className="max-w-3xl mx-auto text-center">
            <h1 className="text-2xl sm:text-4xl font-bold mb-3 sm:mb-4">Duelo de conhecimento</h1>
            <p className="text-base sm:text-xl text-muted-foreground mb-8 sm:mb-12 px-2">
              Escolha seu modo de jogo e teste seus conhecimentos!
            </p>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
              {/* Solo Mode */}
              <Card 
                className="p-6 sm:p-8 cursor-pointer transition-all duration-300 hover:shadow-xl hover:scale-[1.02] border-2 hover:border-primary group"
                onClick={() => setMode('solo')}
              >
                <div className="w-16 h-16 rounded-full bg-primary/10 flex items-center justify-center mx-auto mb-4 group-hover:bg-primary/20 transition-colors">
                  <User className="w-8 h-8 text-primary" />
                </div>
                <h2 className="text-xl sm:text-2xl font-bold mb-2">Modo Solo</h2>
                <p className="text-muted-foreground mb-4">
                  Desafie-se individualmente! Responda questões contra o relógio e acumule pontos.
                </p>
                <div className="flex items-center justify-center gap-2 text-sm text-primary">
                  <Zap className="w-4 h-4" />
                  <span>5 questões • 15s cada</span>
                </div>
              </Card>

              {/* Duel Mode */}
              <Card 
                className="p-6 sm:p-8 cursor-pointer transition-all duration-300 hover:shadow-xl hover:scale-[1.02] border-2 hover:border-secondary group"
                onClick={() => setMode('duel')}
              >
                <div className="w-16 h-16 rounded-full bg-secondary/10 flex items-center justify-center mx-auto mb-4 group-hover:bg-secondary/20 transition-colors">
                  <Users className="w-8 h-8 text-secondary" />
                </div>
                <h2 className="text-xl sm:text-2xl font-bold mb-2">Modo Duelo</h2>
                <p className="text-muted-foreground mb-4">
                  Enfrente outro jogador online em tempo real! Quem acertar mais, vence.
                </p>
                <div className="flex items-center justify-center gap-2 text-sm text-secondary">
                  <Swords className="w-4 h-4" />
                  <span>Jogador vs Jogador</span>
                </div>
              </Card>
            </div>
          </div>
        </div>
      </PremiumGate>
    </div>
  );
};

export default Duelo;
