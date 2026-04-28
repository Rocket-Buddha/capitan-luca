# 04. Home screen shell

- Objetivo: construir el home principal siguiendo el mockup actual.
- Ownership: `scenes/ui/home/HomeScreen.tscn`, `scripts/ui/home/HomeScreen.gd`
- Archivos:
- `scenes/ui/home/HomeScreen.tscn`
- `scripts/ui/home/HomeScreen.gd`
- Trabajo:
- layout portrait con logo arriba, CTA `Jugar`, botones secundarios `Settings` y `?`
- reutilizar fondo espacial/parallax compartido con gameplay
- emitir senales para abrir modales y arrancar partida
- Dependencias: 02, 03
- Ver con humanos:
- confirmar si `Settings` y `?` viven abajo como en mockup actual o cambian de posicion
- Criterio de cierre:
- home abre, renderiza el layout base y dispara acciones por botones
