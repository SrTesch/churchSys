// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import { createRoot } from "react-dom/client";
import EuSouLindo from "./components/EuSouLindo";

document.addEventListener("DOMContentLoaded", () => {
  const root = createRoot(document.getElementById("pessoas"));
  root.render(<EuSouLindo greeting="Hello from React!" />);
});
