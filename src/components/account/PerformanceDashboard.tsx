import { useState } from 'react';
import {
  BarChart, Bar, LineChart, Line, XAxis, YAxis, CartesianGrid,
  ResponsiveContainer, Tooltip, Cell, PieChart, Pie, Legend, Area, AreaChart,
} from 'recharts';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Tabs, TabsList, TabsTrigger, TabsContent } from '@/components/ui/tabs';
import { usePerformanceStats, TimeRange } from '@/hooks/usePerformanceStats';
import { Skeleton } from '@/components/ui/skeleton';
import {
  Target, Clock, TrendingUp, Brain, BarChart3, Activity, Zap,
} from 'lucide-react';

const SUBJECT_COLORS = [
  'hsl(158, 64%, 42%)', // primary
  'hsl(217, 91%, 48%)', // secondary
  'hsl(45, 93%, 58%)',  // accent
  'hsl(0, 84%, 60%)',   // destructive
  'hsl(280, 60%, 50%)', // purple
  'hsl(190, 70%, 45%)', // teal
  'hsl(30, 80%, 55%)',  // orange
  'hsl(340, 65%, 50%)', // pink
];

interface Props {
  userId: string;
}

export function PerformanceDashboard({ userId }: Props) {
  const [timeRange, setTimeRange] = useState<TimeRange>('30d');
  const { data, isLoading } = usePerformanceStats(userId, timeRange);

  if (isLoading) {
    return (
      <div className="space-y-4">
        <Skeleton className="h-10 w-64" />
        <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
          {[...Array(4)].map((_, i) => <Skeleton key={i} className="h-24" />)}
        </div>
        <Skeleton className="h-72" />
      </div>
    );
  }

  if (!data || data.totals.totalAttempts === 0) {
    return (
      <Card>
        <CardContent className="py-12 text-center">
          <BarChart3 className="w-12 h-12 text-muted-foreground mx-auto mb-3" />
          <h3 className="text-lg font-semibold text-foreground mb-1">Sem dados ainda</h3>
          <p className="text-muted-foreground text-sm">
            Complete quizzes para ver suas estatísticas de desempenho aqui.
          </p>
        </CardContent>
      </Card>
    );
  }

  const { bySubject, daily, totals } = data;

  const pieData = bySubject.slice(0, 6).map((s, i) => ({
    name: s.subject.length > 15 ? s.subject.slice(0, 15) + '…' : s.subject,
    value: s.attempts,
    fill: SUBJECT_COLORS[i % SUBJECT_COLORS.length],
  }));

  return (
    <div className="space-y-5">
      {/* Time range selector */}
      <div className="flex items-center justify-between flex-wrap gap-2">
        <h2 className="text-lg font-bold text-foreground flex items-center gap-2">
          <Activity className="w-5 h-5 text-primary" />
          Estatísticas de Desempenho
        </h2>
        <div className="flex gap-1 bg-muted rounded-lg p-1">
          {([['7d', '7 dias'], ['30d', '30 dias'], ['90d', '90 dias'], ['all', 'Tudo']] as const).map(([val, label]) => (
            <button
              key={val}
              onClick={() => setTimeRange(val)}
              className={`px-3 py-1.5 text-xs font-medium rounded-md transition-colors ${
                timeRange === val
                  ? 'bg-background text-foreground shadow-sm'
                  : 'text-muted-foreground hover:text-foreground'
              }`}
            >
              {label}
            </button>
          ))}
        </div>
      </div>

      {/* Summary cards */}
      <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
        <SummaryCard icon={Brain} label="Questões" value={totals.totalQuestions} color="primary" />
        <SummaryCard icon={Target} label="Taxa de Acerto" value={`${totals.overallAccuracy}%`} color="success" />
        <SummaryCard icon={Clock} label="Tempo Total" value={`${totals.totalTimeMinutes} min`} color="secondary" />
        <SummaryCard icon={Zap} label="XP Total" value={daily.reduce((s, d) => s + d.xp, 0)} color="accent" />
      </div>

      {/* Charts */}
      <Tabs defaultValue="xp" className="w-full">
        <TabsList className="grid w-full grid-cols-4 max-w-lg">
          <TabsTrigger value="xp">XP</TabsTrigger>
          <TabsTrigger value="accuracy">Acertos</TabsTrigger>
          <TabsTrigger value="time">Tempo</TabsTrigger>
          <TabsTrigger value="subjects">Matérias</TabsTrigger>
        </TabsList>

        {/* XP evolution */}
        <TabsContent value="xp">
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm text-muted-foreground">Evolução de XP ao Longo do Tempo</CardTitle>
            </CardHeader>
            <CardContent>
              {daily.length < 2 ? (
                <p className="text-center text-muted-foreground text-sm py-8">Precisa de pelo menos 2 dias de dados.</p>
              ) : (
                <div className="h-64">
                  <ResponsiveContainer width="100%" height="100%">
                    <AreaChart data={daily}>
                      <defs>
                        <linearGradient id="xpGradient" x1="0" y1="0" x2="0" y2="1">
                          <stop offset="5%" stopColor="hsl(45, 93%, 58%)" stopOpacity={0.4} />
                          <stop offset="95%" stopColor="hsl(45, 93%, 58%)" stopOpacity={0} />
                        </linearGradient>
                      </defs>
                      <CartesianGrid strokeDasharray="3 3" className="stroke-border" />
                      <XAxis dataKey="label" tick={{ fontSize: 11 }} className="fill-muted-foreground" />
                      <YAxis tick={{ fontSize: 11 }} className="fill-muted-foreground" />
                      <Tooltip
                        contentStyle={{ borderRadius: '0.5rem', border: '1px solid hsl(var(--border))' }}
                        formatter={(v: number) => [`${v} XP`, 'XP Acumulado']}
                      />
                      <Area
                        type="monotone"
                        dataKey="cumulativeXp"
                        stroke="hsl(45, 93%, 58%)"
                        strokeWidth={2}
                        fill="url(#xpGradient)"
                        dot={{ r: 3, fill: 'hsl(45, 93%, 58%)' }}
                        activeDot={{ r: 5 }}
                      />
                    </AreaChart>
                  </ResponsiveContainer>
                </div>
              )}
            </CardContent>
          </Card>
        </TabsContent>

        {/* Accuracy over time */}
        <TabsContent value="accuracy">
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm text-muted-foreground">Taxa de Acerto ao Longo do Tempo</CardTitle>
            </CardHeader>
            <CardContent>
              {daily.length < 2 ? (
                <p className="text-center text-muted-foreground text-sm py-8">Precisa de pelo menos 2 dias de dados.</p>
              ) : (
                <div className="h-64">
                  <ResponsiveContainer width="100%" height="100%">
                    <LineChart data={daily}>
                      <CartesianGrid strokeDasharray="3 3" className="stroke-border" />
                      <XAxis dataKey="label" tick={{ fontSize: 11 }} className="fill-muted-foreground" />
                      <YAxis domain={[0, 100]} tick={{ fontSize: 11 }} className="fill-muted-foreground" unit="%" />
                      <Tooltip
                        contentStyle={{ borderRadius: '0.5rem', border: '1px solid hsl(var(--border))' }}
                        formatter={(v: number) => [`${v}%`, 'Taxa de Acerto']}
                      />
                      <Line
                        type="monotone"
                        dataKey="accuracy"
                        stroke="hsl(158, 64%, 42%)"
                        strokeWidth={2}
                        dot={{ r: 3, fill: 'hsl(158, 64%, 42%)' }}
                        activeDot={{ r: 5 }}
                      />
                    </LineChart>
                  </ResponsiveContainer>
                </div>
              )}
            </CardContent>
          </Card>
        </TabsContent>

        {/* Study time over time */}
        <TabsContent value="time">
          <Card>
            <CardHeader className="pb-2">
              <CardTitle className="text-sm text-muted-foreground">Tempo de Estudo por Dia (minutos)</CardTitle>
            </CardHeader>
            <CardContent>
              {daily.length === 0 ? (
                <p className="text-center text-muted-foreground text-sm py-8">Sem dados de tempo.</p>
              ) : (
                <div className="h-64">
                  <ResponsiveContainer width="100%" height="100%">
                    <BarChart data={daily}>
                      <CartesianGrid strokeDasharray="3 3" className="stroke-border" />
                      <XAxis dataKey="label" tick={{ fontSize: 11 }} className="fill-muted-foreground" />
                      <YAxis tick={{ fontSize: 11 }} className="fill-muted-foreground" />
                      <Tooltip
                        contentStyle={{ borderRadius: '0.5rem', border: '1px solid hsl(var(--border))' }}
                        formatter={(v: number) => [`${v} min`, 'Tempo']}
                      />
                      <Bar dataKey="timeMinutes" radius={[4, 4, 0, 0]} fill="hsl(217, 91%, 48%)" />
                    </BarChart>
                  </ResponsiveContainer>
                </div>
              )}
            </CardContent>
          </Card>
        </TabsContent>

        {/* By subject */}
        <TabsContent value="subjects">
          <div className="grid md:grid-cols-2 gap-4">
            {/* Accuracy by subject bar chart */}
            <Card>
              <CardHeader className="pb-2">
                <CardTitle className="text-sm text-muted-foreground">Acerto por Matéria</CardTitle>
              </CardHeader>
              <CardContent>
                <div className="h-64">
                  <ResponsiveContainer width="100%" height="100%">
                    <BarChart data={bySubject.slice(0, 8)} layout="vertical">
                      <CartesianGrid strokeDasharray="3 3" className="stroke-border" />
                      <XAxis type="number" domain={[0, 100]} unit="%" tick={{ fontSize: 11 }} />
                      <YAxis
                        type="category"
                        dataKey="subject"
                        tick={{ fontSize: 10 }}
                        width={100}
                        tickFormatter={(v: string) => v.length > 14 ? v.slice(0, 14) + '…' : v}
                      />
                      <Tooltip
                        contentStyle={{ borderRadius: '0.5rem', border: '1px solid hsl(var(--border))' }}
                        formatter={(v: number) => [`${v}%`, 'Acerto']}
                      />
                      <Bar dataKey="accuracy" radius={[0, 4, 4, 0]}>
                        {bySubject.slice(0, 8).map((_, i) => (
                          <Cell key={i} fill={SUBJECT_COLORS[i % SUBJECT_COLORS.length]} />
                        ))}
                      </Bar>
                    </BarChart>
                  </ResponsiveContainer>
                </div>
              </CardContent>
            </Card>

            {/* Distribution pie chart */}
            <Card>
              <CardHeader className="pb-2">
                <CardTitle className="text-sm text-muted-foreground">Distribuição por Matéria</CardTitle>
              </CardHeader>
              <CardContent>
                <div className="h-64">
                  <ResponsiveContainer width="100%" height="100%">
                    <PieChart>
                      <Pie
                        data={pieData}
                        cx="50%"
                        cy="50%"
                        innerRadius={50}
                        outerRadius={80}
                        dataKey="value"
                        paddingAngle={2}
                      >
                        {pieData.map((entry, i) => (
                          <Cell key={i} fill={entry.fill} />
                        ))}
                      </Pie>
                      <Tooltip formatter={(v: number) => [`${v} sessões`, 'Qtd']} />
                      <Legend wrapperStyle={{ fontSize: '11px' }} />
                    </PieChart>
                  </ResponsiveContainer>
                </div>
              </CardContent>
            </Card>
          </div>
        </TabsContent>
      </Tabs>
    </div>
  );
}

function SummaryCard({ icon: Icon, label, value, color }: {
  icon: React.ComponentType<{ className?: string }>;
  label: string;
  value: string | number;
  color: string;
}) {
  return (
    <Card className="hover:shadow-md transition-shadow">
      <CardContent className="p-4 text-center">
        <div className={`w-10 h-10 bg-${color}/10 rounded-full flex items-center justify-center mx-auto mb-2`}>
          <Icon className={`w-5 h-5 text-${color}`} />
        </div>
        <p className="text-2xl font-bold text-foreground">{value}</p>
        <p className="text-xs text-muted-foreground">{label}</p>
      </CardContent>
    </Card>
  );
}
