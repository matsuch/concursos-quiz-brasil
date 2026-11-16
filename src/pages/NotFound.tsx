import { Link, useLocation } from "react-router-dom";
import { useEffect } from "react";
import { Helmet } from "react-helmet-async";

const NotFound = () => {
  const location = useLocation();

  useEffect(() => {
    console.error("404 Error: User attempted to access non-existent route:", location.pathname);
  }, [location.pathname]);

  return (
    <>
      {/* Uma SPA responde 200 em qualquer caminho, então esta página é um
          "soft 404": sem o noindex, o buscador indexaria endereços inventados. */}
      <Helmet>
        <title>Página não encontrada | Passar Concursos</title>
        <meta name="robots" content="noindex, follow" />
      </Helmet>
      <div className="flex min-h-screen items-center justify-center bg-muted">
      <div className="text-center">
        <h1 className="mb-4 text-4xl font-bold">404</h1>
        <p className="mb-4 text-xl text-muted-foreground">Página não encontrada</p>
        <p className="mb-6 text-muted-foreground">
          O endereço pode ter mudado ou o concurso pode ter saído da lista.
        </p>
        <div className="flex flex-wrap justify-center gap-4">
          <Link to="/" className="text-primary underline hover:text-primary/90">Voltar ao início</Link>
          <Link to="/concursos" className="text-primary underline hover:text-primary/90">Ver concursos abertos</Link>
        </div>
        </div>
      </div>
    </>
  );
};

export default NotFound;
