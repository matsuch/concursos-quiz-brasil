import { defineConfig, loadEnv, type Plugin } from "vite";
import react from "@vitejs/plugin-react-swc";
import path from "path";
import { componentTagger } from "lovable-tagger";

// Endereço que o index.html traz escrito (og:url, JSON-LD). Com VITE_SITE_URL
// definido no build, ele é trocado pelo domínio configurado — o mesmo valor
// que src/lib/seo-constants.tsx e os scripts de sitemap e prerender usam.
const URL_PADRAO = "https://passar-concursos.vercel.app";

function enderecoDoSite(siteUrl: string): Plugin {
  return {
    name: "endereco-do-site",
    transformIndexHtml: (html) =>
      siteUrl === URL_PADRAO ? html : html.replaceAll(URL_PADRAO, siteUrl),
  };
}

// https://vitejs.dev/config/
export default defineConfig(({ mode }) => {
  const env = loadEnv(mode, process.cwd(), "VITE_");
  const siteUrl = (env.VITE_SITE_URL || URL_PADRAO).replace(/\/+$/, "");

  return {
    server: {
      host: "::",
      port: 8080,
    },
    base: "/",
    plugins: [
      react(),
      enderecoDoSite(siteUrl),
      mode === "development" && componentTagger(),
    ].filter(Boolean),
    resolve: {
      alias: {
        "@": path.resolve(__dirname, "./src"),
      },
    },
  };
});
