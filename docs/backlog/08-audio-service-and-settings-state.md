# 08. Audio service and settings state

- Objetivo: conectar toggles del modal con buses y reproduccion real.
- Ownership: `scripts/core/AudioService.gd`, `project.godot`
- Archivos:
- `scripts/core/AudioService.gd`
- `project.godot`
- Trabajo:
- registrar `AudioService` como autoload
- mapear ON/OFF de musica y SFX a buses o volumen
- cargar estado inicial desde `SaveData`
- dejar el servicio reutilizable tanto por pantallas 2D como por la escena de juego
- Dependencias: 02, 07
- Ver con humanos:
- confirmar si el proyecto usara buses separados `Music` y `SFX`
- Criterio de cierre:
- cambiar toggles actualiza audio en runtime y persiste estado
