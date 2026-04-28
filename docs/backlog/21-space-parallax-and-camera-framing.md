# 21. Space parallax and camera framing

- Objetivo: compartir fondo espacial y reglas de encuadre entre home y gameplay.
- Ownership: `scenes/background/SpaceParallax.tscn`, `scripts/background/SpaceParallax.gd`, `scripts/gameplay/camera/GameCamera.gd`
- Archivos:
- `scenes/background/SpaceParallax.tscn`
- `scripts/background/SpaceParallax.gd`
- `scripts/gameplay/camera/GameCamera.gd`
- Trabajo:
- parallax de 2 o 3 capas
- reutilizar fondo en home y juego
- encuadrar planeta actual centrado horizontal y lo mas abajo posible sin salir de pantalla
- Dependencias: 04, 09, 10, 12
- Ver con humanos:
- confirmar si el home usa exactamente el mismo prefab de fondo o una variante mas lenta
- Criterio de cierre:
- home y gameplay comparten el mismo lenguaje espacial y la camara cumple el framing del GDD
