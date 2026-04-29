# 18. HUD and pause flow

- Objetivo: construir HUD 2D in-game y flujo de pausa.
- Ownership: `scenes/ui/game/HUD.tscn`, `scripts/ui/game/HUD.gd`, `scenes/ui/game/PauseModal.tscn`
- Archivos:
- `scenes/ui/game/HUD.tscn`
- `scripts/ui/game/HUD.gd`
- `scenes/ui/game/PauseModal.tscn`
- Trabajo:
- pausa arriba derecha
- combustible arriba izquierda
- anios luz arriba centro
- boton orbital abajo derecha
- integrar visibilidad y estado del boton orbital
- montar HUD y pausa como overlays 2D sobre el gameplay visual 3D
- Dependencias: 09, 16, 17
- Ver con humanos:
- confirmar si pausa muestra solo reanudar/salir o tambien settings rapidos
- Criterio de cierre:
- HUD refleja estado real y la pausa congela gameplay sin romper la corrida
