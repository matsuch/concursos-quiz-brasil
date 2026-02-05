export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  // Allows to automatically instantiate createClient with right options
  // instead of createClient<Database, { PostgrestVersion: 'XX' }>(URL, KEY)
  __InternalSupabase: {
    PostgrestVersion: "13.0.5"
  }
  public: {
    Tables: {
      badge_audit: {
        Row: {
          action: string
          badge_id: string
          changed_at: string
          id: string
          reason: string | null
          user_id: string
        }
        Insert: {
          action: string
          badge_id: string
          changed_at?: string
          id?: string
          reason?: string | null
          user_id: string
        }
        Update: {
          action?: string
          badge_id?: string
          changed_at?: string
          id?: string
          reason?: string | null
          user_id?: string
        }
        Relationships: []
      }
      badges: {
        Row: {
          category: string
          created_at: string
          description: string
          icon: string
          id: string
          name: string
          rarity: string | null
          requirement_type: string
          requirement_value: number
        }
        Insert: {
          category: string
          created_at?: string
          description: string
          icon: string
          id?: string
          name: string
          rarity?: string | null
          requirement_type: string
          requirement_value: number
        }
        Update: {
          category?: string
          created_at?: string
          description?: string
          icon?: string
          id?: string
          name?: string
          rarity?: string | null
          requirement_type?: string
          requirement_value?: number
        }
        Relationships: []
      }
      concursos: {
        Row: {
          created_at: string | null
          id: string
          inscricoes_ate: string
          local: string
          nivel: string
          orgao: string
          salario: number | null
          status: string
          titulo: string
          url_edital: string | null
          vagas: number
        }
        Insert: {
          created_at?: string | null
          id?: string
          inscricoes_ate: string
          local: string
          nivel: string
          orgao: string
          salario?: number | null
          status: string
          titulo: string
          url_edital?: string | null
          vagas: number
        }
        Update: {
          created_at?: string | null
          id?: string
          inscricoes_ate?: string
          local?: string
          nivel?: string
          orgao?: string
          salario?: number | null
          status?: string
          titulo?: string
          url_edital?: string | null
          vagas?: number
        }
        Relationships: []
      }
      courses: {
        Row: {
          created_at: string | null
          description: string | null
          id: string
          title: string | null
        }
        Insert: {
          created_at?: string | null
          description?: string | null
          id?: string
          title?: string | null
        }
        Update: {
          created_at?: string | null
          description?: string | null
          id?: string
          title?: string | null
        }
        Relationships: []
      }
      duel_questions: {
        Row: {
          duel_id: string
          id: string
          question_id: string
          question_order: number
        }
        Insert: {
          duel_id: string
          id?: string
          question_id: string
          question_order: number
        }
        Update: {
          duel_id?: string
          id?: string
          question_id?: string
          question_order?: number
        }
        Relationships: [
          {
            foreignKeyName: "duel_questions_duel_id_fkey"
            columns: ["duel_id"]
            isOneToOne: false
            referencedRelation: "duels"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "duel_questions_question_id_fkey"
            columns: ["question_id"]
            isOneToOne: false
            referencedRelation: "questions"
            referencedColumns: ["id"]
          },
        ]
      }
      duels: {
        Row: {
          created_at: string
          finished_at: string | null
          id: string
          player1_id: string
          player1_score: number | null
          player2_id: string | null
          player2_score: number | null
          status: string | null
          subject: string
          winner_id: string | null
        }
        Insert: {
          created_at?: string
          finished_at?: string | null
          id?: string
          player1_id: string
          player1_score?: number | null
          player2_id?: string | null
          player2_score?: number | null
          status?: string | null
          subject: string
          winner_id?: string | null
        }
        Update: {
          created_at?: string
          finished_at?: string | null
          id?: string
          player1_id?: string
          player1_score?: number | null
          player2_id?: string | null
          player2_score?: number | null
          status?: string | null
          subject?: string
          winner_id?: string | null
        }
        Relationships: []
      }
      edital_topics: {
        Row: {
          completed_at: string | null
          created_at: string
          id: string
          is_completed: boolean | null
          notes: string | null
          priority: number | null
          subject: string
          subtopic: string | null
          topic: string
          updated_at: string
          user_id: string
        }
        Insert: {
          completed_at?: string | null
          created_at?: string
          id?: string
          is_completed?: boolean | null
          notes?: string | null
          priority?: number | null
          subject: string
          subtopic?: string | null
          topic: string
          updated_at?: string
          user_id: string
        }
        Update: {
          completed_at?: string | null
          created_at?: string
          id?: string
          is_completed?: boolean | null
          notes?: string | null
          priority?: number | null
          subject?: string
          subtopic?: string | null
          topic?: string
          updated_at?: string
          user_id?: string
        }
        Relationships: []
      }
      estatisticas: {
        Row: {
          id: string
          taxa_aprovacao: number | null
          total_concursos: number | null
          total_questoes: number | null
          updated_at: string | null
        }
        Insert: {
          id?: string
          taxa_aprovacao?: number | null
          total_concursos?: number | null
          total_questoes?: number | null
          updated_at?: string | null
        }
        Update: {
          id?: string
          taxa_aprovacao?: number | null
          total_concursos?: number | null
          total_questoes?: number | null
          updated_at?: string | null
        }
        Relationships: []
      }
      flashcard_progress: {
        Row: {
          flashcard_id: string
          id: string
          last_reviewed_at: string
          times_reviewed: number | null
          user_id: string
        }
        Insert: {
          flashcard_id: string
          id?: string
          last_reviewed_at?: string
          times_reviewed?: number | null
          user_id: string
        }
        Update: {
          flashcard_id?: string
          id?: string
          last_reviewed_at?: string
          times_reviewed?: number | null
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "flashcard_progress_flashcard_id_fkey"
            columns: ["flashcard_id"]
            isOneToOne: false
            referencedRelation: "flashcards"
            referencedColumns: ["id"]
          },
        ]
      }
      flashcards: {
        Row: {
          back_content: string
          created_at: string
          created_by: string | null
          front_content: string
          id: string
          is_official: boolean | null
          subject: string
        }
        Insert: {
          back_content: string
          created_at?: string
          created_by?: string | null
          front_content: string
          id?: string
          is_official?: boolean | null
          subject: string
        }
        Update: {
          back_content?: string
          created_at?: string
          created_by?: string | null
          front_content?: string
          id?: string
          is_official?: boolean | null
          subject?: string
        }
        Relationships: []
      }
      mind_maps: {
        Row: {
          created_at: string
          id: string
          nodes: Json
          subject: string
          title: string
          updated_at: string
        }
        Insert: {
          created_at?: string
          id?: string
          nodes: Json
          subject: string
          title: string
          updated_at?: string
        }
        Update: {
          created_at?: string
          id?: string
          nodes?: Json
          subject?: string
          title?: string
          updated_at?: string
        }
        Relationships: []
      }
      modules: {
        Row: {
          course_id: string | null
          id: string
          order_index: number | null
          title: string | null
        }
        Insert: {
          course_id?: string | null
          id?: string
          order_index?: number | null
          title?: string | null
        }
        Update: {
          course_id?: string | null
          id?: string
          order_index?: number | null
          title?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "modules_course_id_fkey"
            columns: ["course_id"]
            isOneToOne: false
            referencedRelation: "courses"
            referencedColumns: ["id"]
          },
        ]
      }
      profiles: {
        Row: {
          avatar_url: string | null
          created_at: string
          display_name: string | null
          duels_played: number | null
          duels_won: number | null
          flashcards_studied: number | null
          id: string
          quizzes_completed: number | null
          simulados_completed: number | null
          total_points: number | null
          updated_at: string
          user_id: string
        }
        Insert: {
          avatar_url?: string | null
          created_at?: string
          display_name?: string | null
          duels_played?: number | null
          duels_won?: number | null
          flashcards_studied?: number | null
          id?: string
          quizzes_completed?: number | null
          simulados_completed?: number | null
          total_points?: number | null
          updated_at?: string
          user_id: string
        }
        Update: {
          avatar_url?: string | null
          created_at?: string
          display_name?: string | null
          duels_played?: number | null
          duels_won?: number | null
          flashcards_studied?: number | null
          id?: string
          quizzes_completed?: number | null
          simulados_completed?: number | null
          total_points?: number | null
          updated_at?: string
          user_id?: string
        }
        Relationships: []
      }
      questions: {
        Row: {
          ai_explanation: string | null
          assunto: string | null
          banca: string | null
          correct_answer: number
          created_at: string
          created_by: string | null
          difficulty: string | null
          id: string
          is_official: boolean | null
          options: Json
          prova: string | null
          question: string
          subject: string
        }
        Insert: {
          ai_explanation?: string | null
          assunto?: string | null
          banca?: string | null
          correct_answer: number
          created_at?: string
          created_by?: string | null
          difficulty?: string | null
          id?: string
          is_official?: boolean | null
          options: Json
          prova?: string | null
          question: string
          subject: string
        }
        Update: {
          ai_explanation?: string | null
          assunto?: string | null
          banca?: string | null
          correct_answer?: number
          created_at?: string
          created_by?: string | null
          difficulty?: string | null
          id?: string
          is_official?: boolean | null
          options?: Json
          prova?: string | null
          question?: string
          subject?: string
        }
        Relationships: []
      }
      quiz_attempts: {
        Row: {
          correct_answers: number
          created_at: string
          id: string
          points_earned: number
          subject: string
          time_spent_seconds: number | null
          total_questions: number
          user_id: string
        }
        Insert: {
          correct_answers: number
          created_at?: string
          id?: string
          points_earned: number
          subject: string
          time_spent_seconds?: number | null
          total_questions: number
          user_id: string
        }
        Update: {
          correct_answers?: number
          created_at?: string
          id?: string
          points_earned?: number
          subject?: string
          time_spent_seconds?: number | null
          total_questions?: number
          user_id?: string
        }
        Relationships: []
      }
      simulado_attempts: {
        Row: {
          correct_answers: number
          created_at: string | null
          id: string
          points_earned: number
          simulado_id: string | null
          time_spent_seconds: number
          total_questions: number
          user_id: string | null
        }
        Insert: {
          correct_answers: number
          created_at?: string | null
          id?: string
          points_earned: number
          simulado_id?: string | null
          time_spent_seconds: number
          total_questions: number
          user_id?: string | null
        }
        Update: {
          correct_answers?: number
          created_at?: string | null
          id?: string
          points_earned?: number
          simulado_id?: string | null
          time_spent_seconds?: number
          total_questions?: number
          user_id?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "simulado_attempts_simulado_id_fkey"
            columns: ["simulado_id"]
            isOneToOne: false
            referencedRelation: "simulados"
            referencedColumns: ["id"]
          },
        ]
      }
      simulado_questions: {
        Row: {
          correct_answer: number
          created_at: string | null
          id: string
          options: Json
          order: number
          question: string
          simulado_id: string | null
          subject: string
        }
        Insert: {
          correct_answer: number
          created_at?: string | null
          id?: string
          options: Json
          order: number
          question: string
          simulado_id?: string | null
          subject: string
        }
        Update: {
          correct_answer?: number
          created_at?: string | null
          id?: string
          options?: Json
          order?: number
          question?: string
          simulado_id?: string | null
          subject?: string
        }
        Relationships: [
          {
            foreignKeyName: "simulado_questions_simulado_id_fkey"
            columns: ["simulado_id"]
            isOneToOne: false
            referencedRelation: "simulados"
            referencedColumns: ["id"]
          },
        ]
      }
      simulados: {
        Row: {
          created_at: string | null
          description: string | null
          duration_minutes: number
          id: string
          title: string
          total_questions: number
        }
        Insert: {
          created_at?: string | null
          description?: string | null
          duration_minutes: number
          id?: string
          title: string
          total_questions: number
        }
        Update: {
          created_at?: string | null
          description?: string | null
          duration_minutes?: number
          id?: string
          title?: string
          total_questions?: number
        }
        Relationships: []
      }
      study_blocks: {
        Row: {
          color: string | null
          created_at: string
          cycle_id: string
          duration_minutes: number
          id: string
          order_index: number
          subject: string
        }
        Insert: {
          color?: string | null
          created_at?: string
          cycle_id: string
          duration_minutes?: number
          id?: string
          order_index: number
          subject: string
        }
        Update: {
          color?: string | null
          created_at?: string
          cycle_id?: string
          duration_minutes?: number
          id?: string
          order_index?: number
          subject?: string
        }
        Relationships: [
          {
            foreignKeyName: "study_blocks_cycle_id_fkey"
            columns: ["cycle_id"]
            isOneToOne: false
            referencedRelation: "study_cycles"
            referencedColumns: ["id"]
          },
        ]
      }
      study_calendar_events: {
        Row: {
          color: string | null
          created_at: string | null
          end_time: string
          id: string
          is_recurring: boolean | null
          notes: string | null
          recurrence_rule: string | null
          start_time: string
          subject: string | null
          title: string
          updated_at: string | null
          user_id: string
        }
        Insert: {
          color?: string | null
          created_at?: string | null
          end_time: string
          id?: string
          is_recurring?: boolean | null
          notes?: string | null
          recurrence_rule?: string | null
          start_time: string
          subject?: string | null
          title: string
          updated_at?: string | null
          user_id: string
        }
        Update: {
          color?: string | null
          created_at?: string | null
          end_time?: string
          id?: string
          is_recurring?: boolean | null
          notes?: string | null
          recurrence_rule?: string | null
          start_time?: string
          subject?: string | null
          title?: string
          updated_at?: string | null
          user_id?: string
        }
        Relationships: []
      }
      study_cycles: {
        Row: {
          created_at: string
          duration_days: number
          id: string
          is_active: boolean | null
          name: string
          updated_at: string
          user_id: string
        }
        Insert: {
          created_at?: string
          duration_days?: number
          id?: string
          is_active?: boolean | null
          name: string
          updated_at?: string
          user_id: string
        }
        Update: {
          created_at?: string
          duration_days?: number
          id?: string
          is_active?: boolean | null
          name?: string
          updated_at?: string
          user_id?: string
        }
        Relationships: []
      }
      study_notes: {
        Row: {
          content: string
          created_at: string
          id: string
          is_pinned: boolean | null
          subject: string
          title: string
          updated_at: string
          user_id: string
        }
        Insert: {
          content?: string
          created_at?: string
          id?: string
          is_pinned?: boolean | null
          subject: string
          title: string
          updated_at?: string
          user_id: string
        }
        Update: {
          content?: string
          created_at?: string
          id?: string
          is_pinned?: boolean | null
          subject?: string
          title?: string
          updated_at?: string
          user_id?: string
        }
        Relationships: []
      }
      study_reviews: {
        Row: {
          completed_at: string | null
          created_at: string
          id: string
          is_completed: boolean | null
          review_type: string
          scheduled_date: string
          subject: string
          topic_id: string | null
          topic_name: string
          user_id: string
        }
        Insert: {
          completed_at?: string | null
          created_at?: string
          id?: string
          is_completed?: boolean | null
          review_type: string
          scheduled_date: string
          subject: string
          topic_id?: string | null
          topic_name: string
          user_id: string
        }
        Update: {
          completed_at?: string | null
          created_at?: string
          id?: string
          is_completed?: boolean | null
          review_type?: string
          scheduled_date?: string
          subject?: string
          topic_id?: string | null
          topic_name?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "study_reviews_topic_id_fkey"
            columns: ["topic_id"]
            isOneToOne: false
            referencedRelation: "edital_topics"
            referencedColumns: ["id"]
          },
        ]
      }
      subscriptions: {
        Row: {
          cancel_at_period_end: boolean | null
          canceled_at: string | null
          created_at: string | null
          currency: string | null
          current_period_end: string | null
          current_period_start: string | null
          id: string
          plan_amount: number
          plan_name: string
          status: string
          stripe_customer_id: string | null
          stripe_price_id: string | null
          stripe_subscription_id: string | null
          trial_end: string | null
          updated_at: string | null
          user_id: string
        }
        Insert: {
          cancel_at_period_end?: boolean | null
          canceled_at?: string | null
          created_at?: string | null
          currency?: string | null
          current_period_end?: string | null
          current_period_start?: string | null
          id?: string
          plan_amount: number
          plan_name: string
          status: string
          stripe_customer_id?: string | null
          stripe_price_id?: string | null
          stripe_subscription_id?: string | null
          trial_end?: string | null
          updated_at?: string | null
          user_id: string
        }
        Update: {
          cancel_at_period_end?: boolean | null
          canceled_at?: string | null
          created_at?: string | null
          currency?: string | null
          current_period_end?: string | null
          current_period_start?: string | null
          id?: string
          plan_amount?: number
          plan_name?: string
          status?: string
          stripe_customer_id?: string | null
          stripe_price_id?: string | null
          stripe_subscription_id?: string | null
          trial_end?: string | null
          updated_at?: string | null
          user_id?: string
        }
        Relationships: []
      }
      user_badges: {
        Row: {
          badge_id: string
          id: string
          unlocked_at: string
          user_id: string
        }
        Insert: {
          badge_id: string
          id?: string
          unlocked_at?: string
          user_id: string
        }
        Update: {
          badge_id?: string
          id?: string
          unlocked_at?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "user_badges_badge_id_fkey"
            columns: ["badge_id"]
            isOneToOne: false
            referencedRelation: "badges"
            referencedColumns: ["id"]
          },
        ]
      }
      user_progress: {
        Row: {
          completed: boolean | null
          completed_at: string | null
          user_id: string
          video_id: string
        }
        Insert: {
          completed?: boolean | null
          completed_at?: string | null
          user_id: string
          video_id: string
        }
        Update: {
          completed?: boolean | null
          completed_at?: string | null
          user_id?: string
          video_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "user_progress_video_id_fkey"
            columns: ["video_id"]
            isOneToOne: false
            referencedRelation: "videos"
            referencedColumns: ["id"]
          },
        ]
      }
      videos: {
        Row: {
          duration: string | null
          id: string
          module_id: string | null
          order_index: number | null
          title: string | null
          url: string | null
        }
        Insert: {
          duration?: string | null
          id?: string
          module_id?: string | null
          order_index?: number | null
          title?: string | null
          url?: string | null
        }
        Update: {
          duration?: string | null
          id?: string
          module_id?: string | null
          order_index?: number | null
          title?: string | null
          url?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "videos_module_id_fkey"
            columns: ["module_id"]
            isOneToOne: false
            referencedRelation: "modules"
            referencedColumns: ["id"]
          },
        ]
      }
    }
    Views: {
      profiles_ranking: {
        Row: {
          display_name: string | null
          quizzes_completed: number | null
          total_points: number | null
          user_id: string | null
        }
        Insert: {
          display_name?: string | null
          quizzes_completed?: number | null
          total_points?: number | null
          user_id?: string | null
        }
        Update: {
          display_name?: string | null
          quizzes_completed?: number | null
          total_points?: number | null
          user_id?: string | null
        }
        Relationships: []
      }
      user_subscription_details: {
        Row: {
          cancel_at_period_end: boolean | null
          canceled_at: string | null
          created_at: string | null
          currency: string | null
          current_period_end: string | null
          current_period_start: string | null
          email: string | null
          id: string | null
          plan_amount: number | null
          plan_name: string | null
          status: string | null
          status_display: string | null
          stripe_customer_id: string | null
          stripe_price_id: string | null
          stripe_subscription_id: string | null
          trial_end: string | null
          updated_at: string | null
          user_id: string | null
        }
        Relationships: []
      }
    }
    Functions: {
      get_profiles_ranking: {
        Args: never
        Returns: {
          display_name: string
          id: string
          total_points: number
          user_id: string
        }[]
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type DatabaseWithoutInternals = Omit<Database, "__InternalSupabase">

type DefaultSchema = DatabaseWithoutInternals[Extract<keyof Database, "public">]

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof DatabaseWithoutInternals },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof DatabaseWithoutInternals },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never

export const Constants = {
  public: {
    Enums: {},
  },
} as const
