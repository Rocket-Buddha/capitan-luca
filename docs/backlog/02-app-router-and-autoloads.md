# 02. App router and autoloads

- Objetivo: definir los servicios globales minimos y el enrutado entre pantallas base.
- Ownership: `project.godot`, `scripts/core/SceneRouter.gd`, `scripts/core/GameConfig.gd`
- Archivos:
- `project.godot`
- `scripts/core/SceneRouter.gd`
- `scripts/core/GameConfig.gd`
- Trabajo:
- registrar autoloads para `SceneRouter` y `GameConfig`
- centralizar nombres de escenas, resolucion base y constantes de gameplay
- exponer API minima para ir a splash, home y game
- Dependencias: 01
- Ver con humanos:
- confirmar si `GameConfig` tambien debe guardar tuning experimental o solo constantes estables
- Criterio de cierre:
- `App.gd` puede pedir a `SceneRouter` cargar pantallas por nombre sin rutas hardcodeadas fuera del servicio
