# 09. Game screen shell and layering

- Objetivo: crear la escena de juego con mundo visual 3D y capas 2D claras para HUD y overlays.
- Ownership: `scenes/ui/game/GameScreen.tscn`, `scripts/ui/game/GameScreen.gd`, `scenes/gameplay/world/GameplayWorld.tscn`
- Archivos:
- `scenes/ui/game/GameScreen.tscn`
- `scripts/ui/game/GameScreen.gd`
- `scenes/gameplay/world/GameplayWorld.tscn`
- Trabajo:
- definir la raiz del juego con fondo, mundo visual 3D, HUD y modales
- preparar puntos de montaje para planeta actual, nave, powerups y ayudas visuales
- conectar pausa y salida a home
- dejar explicita la separacion entre logica de juego en plano y presentacion visual
- Dependencias: 02
- Ver con humanos:
- confirmar si pausa usa modal simple o congela toda la escena con overlay
- Criterio de cierre:
- `SceneRouter` puede abrir `GameScreen` y la escena ya tiene capas estables para sumar sistemas
