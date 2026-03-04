import { createRoot } from "react-dom/client";
import App from "./App.tsx";
import "./index.css";
import { initCapacitor } from "./lib/capacitor";

initCapacitor();

createRoot(document.getElementById("root")!).render(<App />);
