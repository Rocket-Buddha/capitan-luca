# 09. Game screen shell and layering

- Objetivo: crear la escena de juego con capas claras para fondo, gameplay, HUD y overlays.
- Ownership: `scenes/ui/game/GameScreen.tscn`, `scripts/ui/game/GameScreen.gd`
- Archivos:
- `scenes/ui/game/GameScreen.tscn`
- `scripts/ui/game/GameScreen.gd`
- Trabajo:
- definir nodos base para fondo, mundo, HUD y modales
- preparar puntos de montaje para planeta actual, nave, powerups y UI
- conectar pausa y salida a home
- Dependencias: 02
- Ver con humanos:
- confirmar si pausa usa modal simple o congela toda la escena con overlay
- Criterio de cierre:
- `SceneRouter` puede abrir `GameScreen` y la escena ya tiene capas estables para sumar sistemas
