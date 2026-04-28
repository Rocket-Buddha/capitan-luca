# 15. Powerup base and orbiting collectibles

- Objetivo: crear la pieza base de powerups orbitando planetas.
- Ownership: `scenes/gameplay/powerups/PowerUp.tscn`, `scripts/gameplay/powerups/PowerUpBase.gd`
- Archivos:
- `scenes/gameplay/powerups/PowerUp.tscn`
- `scripts/gameplay/powerups/PowerUpBase.gd`
- Trabajo:
- orbita a mitad de velocidad orbital minima
- colision coleccionable con la nave
- sistema simple de tipo de powerup por recurso o enum
- Dependencias: 10, 12
- Ver con humanos:
- confirmar distancia orbital visual de pickups respecto del planeta
- Criterio de cierre:
- un powerup puede orbitar un planeta y disparar un evento de coleccion
