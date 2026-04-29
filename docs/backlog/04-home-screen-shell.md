# 04. Home screen shell

- Objetivo: construir el home principal 2D siguiendo el mockup actual.
- Ownership: `scenes/ui/home/HomeScreen.tscn`, `scripts/ui/home/HomeScreen.gd`
- Archivos:
- `scenes/ui/home/HomeScreen.tscn`
- `scripts/ui/home/HomeScreen.gd`
- Trabajo:
- layout portrait con logo arriba, CTA `Jugar`, botones secundarios `Settings` y `?`
- usar fondo espacial 2D con el mismo lenguaje visual del gameplay
- emitir senales para abrir modales y arrancar partida
- Dependencias: 02, 03
- Ver con humanos:
- confirmar si `Settings` y `?` viven abajo como en mockup actual o cambian de posicion
- Criterio de cierre:
- home abre, renderiza el layout base y dispara acciones por botones
