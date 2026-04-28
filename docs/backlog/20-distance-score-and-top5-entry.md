# 20. Distance score and Top 5 entry

- Objetivo: medir anios luz, decidir ingreso a Top 5 y pedir nombre si corresponde.
- Ownership: `scripts/gameplay/session/ScoreTracker.gd`, `scenes/ui/game/Top5EntryModal.tscn`, `scripts/ui/game/Top5EntryModal.gd`
- Archivos:
- `scripts/gameplay/session/ScoreTracker.gd`
- `scenes/ui/game/Top5EntryModal.tscn`
- `scripts/ui/game/Top5EntryModal.gd`
- Trabajo:
- acumular distancia recorrida
- convertirla al formato visible del HUD y game over
- si entra al top 5, pedir nombre y guardar con fecha
- Dependencias: 07, 19
- Ver con humanos:
- confirmar longitud maxima del nombre y validaciones de caracteres
- Criterio de cierre:
- una corrida puede terminar, entrar al top 5 y persistir una fila valida
