# Backlog de implementacion

Este backlog asume que el repo todavia no tiene proyecto Godot y propone una estructura base para empezar.

Reglas del backlog:
- Un archivo `.md` por tarea.
- Tareas cortas y tecnicas, pensadas para agentes con ownership claro.
- Cada tarea apunta a archivos concretos para crear o modificar.
- Si una tarea tiene una decision pendiente de humanos, se marca dentro de la misma tarea.

Orden recomendado:
- 01 -> 08: base de proyecto y UI principal
- 09 -> 17: gameplay core
- 18 -> 24: HUD, game over, assets, mobile y QA

Estructura propuesta:
- `project.godot`
- `scenes/app/`
- `scenes/ui/`
- `scenes/gameplay/`
- `scripts/core/`
- `scripts/ui/`
- `scripts/gameplay/`
- `assets/ui/`
- `assets/gameplay/`

Lista de tareas:
- `01-bootstrap-godot-project.md`
- `02-app-router-and-autoloads.md`
- `03-splash-screen.md`
- `04-home-screen-shell.md`
- `05-history-credits-modal.md`
- `06-settings-modal-and-ranking.md`
- `07-save-data-and-local-top5.md`
- `08-audio-service-and-settings-state.md`
- `09-game-screen-shell-and-layering.md`
- `10-planet-data-and-factory.md`
- `11-procedural-run-generator.md`
- `12-ship-orbit-controller.md`
- `13-aim-input-and-impulse-indicator.md`
- `14-gravity-and-launch-solver.md`
- `15-powerup-base-and-orbiting-collectibles.md`
- `16-fuel-system-and-fuel-powerup.md`
- `17-orbital-calculation-effect.md`
- `18-hud-and-pause-flow.md`
- `19-defeat-reasons-and-game-over.md`
- `20-distance-score-and-top5-entry.md`
- `21-space-parallax-and-camera-framing.md`
- `22-placeholder-asset-integration.md`
- `23-mobile-safe-area-and-touch-tuning.md`
- `24-smoke-test-and-balance-pass.md`
