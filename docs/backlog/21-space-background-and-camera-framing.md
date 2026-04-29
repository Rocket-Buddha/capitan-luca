# 21. Space background and camera framing

- Objetivo: compartir lenguaje espacial y reglas de encuadre entre home y gameplay.
- Ownership: `scenes/background/SpaceBackdrop.tscn`, `scripts/background/SpaceBackdrop.gd`, `scripts/gameplay/camera/GameCamera.gd`
- Archivos:
- `scenes/background/SpaceBackdrop.tscn`
- `scripts/background/SpaceBackdrop.gd`
- `scripts/gameplay/camera/GameCamera.gd`
- Trabajo:
- crear fondo espacial reutilizable para splash y home
- definir una variante compatible con el gameplay visual 3D sin ensuciar la lectura
- encuadrar planeta actual centrado horizontal y lo mas abajo posible sin salir de pantalla
- validar que el juego siga viendose frontal y claro, aun usando assets 3D
- Dependencias: 04, 09, 10, 12
- Ver con humanos:
- confirmar si home usa exactamente el mismo recurso visual del fondo o una variante mas lenta
- Criterio de cierre:
- home y gameplay comparten el mismo lenguaje espacial y la camara cumple el framing del GDD
