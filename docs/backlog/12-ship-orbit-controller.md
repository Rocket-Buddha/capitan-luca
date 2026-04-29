# 12. Ship orbit controller

- Objetivo: fijar la nave al planeta actual y moverla en orbita circular automatica.
- Ownership: `scenes/gameplay/ship/Ship.tscn`, `scripts/gameplay/ship/ShipController.gd`
- Archivos:
- `scenes/gameplay/ship/Ship.tscn`
- `scripts/gameplay/ship/ShipController.gd`
- Trabajo:
- orbita circular visible sobre el mismo plano de juego
- velocidad orbital minima configurable
- API para cambiar el planeta actual sin romper estado visual
- mantener lectura frontal clara aunque la nave use asset 3D
- Dependencias: 09, 10
- Ver con humanos:
- confirmar si la nave rota siguiendo tangente o mantiene orientacion artistica fija
- Criterio de cierre:
- la nave orbita estable alrededor del planeta actual y puede reanclarse a otro
