import { Link, useLocation } from "react-router-dom";
import { ChevronRight, Home } from "lucide-react";

interface BreadcrumbItem {
  label: string;
  href?: string;
}

interface BreadcrumbsProps {
  items?: BreadcrumbItem[];
}

export const Breadcrumbs = ({ items }: BreadcrumbsProps) => {
  const location = useLocation();
  
  const defaultItems: BreadcrumbItem[] = [
    { label: "Home", href: "/" },
  ];

  const breadcrumbItems = items || defaultItems;

  return (
    <nav className="flex items-center gap-2 text-sm text-muted-foreground" aria-label="Navegação">
      <ol className="flex items-center gap-2">
        {breadcrumbItems.map((item, index) => (
          <li key={index} className="flex items-center gap-2">
            {index === 0 ? (
              <Home className="w-4 h-4" />
            ) : (
              <ChevronRight className="w-4 h-4" />
            )}
            
            {item.href ? (
              <Link
                to={item.href}
                className="hover:text-primary transition-colors hover:underline"
                aria-current={index === breadcrumbItems.length - 1 ? "page" : undefined}
              >
                {item.label}
              </Link>
            ) : (
              <span className="text-foreground font-medium">
                {item.label}
              </span>
            )}
          </li>
        ))}
      </ol>
    </nav>
  );
};