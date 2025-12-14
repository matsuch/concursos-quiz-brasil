import { Card } from "@/components/ui/card";
import { Book, Scale, FileText, Brain, Globe } from "lucide-react";

interface SubjectSelectorProps {
  onSelect: (subject: string) => void;
}

const subjects = [
  {
    name: "Direito Constitucional",
    icon: Scale,
    color: "text-blue-500",
    bgColor: "bg-blue-500/10"
  },
  {
    name: "Direito Administrativo",
    icon: FileText,
    color: "text-purple-500",
    bgColor: "bg-purple-500/10"
  },
  {
    name: "Português",
    icon: Book,
    color: "text-green-500",
    bgColor: "bg-green-500/10"
  },
  {
    name: "Raciocínio Lógico",
    icon: Brain,
    color: "text-orange-500",
    bgColor: "bg-orange-500/10"
  },
  {
    name: "Atualidades",
    icon: Globe,
    color: "text-red-500",
    bgColor: "bg-red-500/10"
  }
];

const SubjectSelector = ({ onSelect }: SubjectSelectorProps) => {
  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
      {subjects.map((subject) => {
        const Icon = subject.icon;
        return (
          <Card
            key={subject.name}
            className="p-4 cursor-pointer transition-all duration-200 hover:shadow-lg hover:scale-[1.02] border-2 hover:border-primary"
            onClick={() => onSelect(subject.name)}
          >
            <div className={`w-12 h-12 rounded-full ${subject.bgColor} flex items-center justify-center mx-auto mb-3`}>
              <Icon className={`w-6 h-6 ${subject.color}`} />
            </div>
            <p className="font-semibold text-sm text-center">{subject.name}</p>
          </Card>
        );
      })}
    </div>
  );
};

export default SubjectSelector;
