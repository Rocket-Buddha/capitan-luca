# 14. Gravity and launch solver

- Objetivo: resolver el vector final del salto y la influencia gravitatoria.
- Ownership: `scripts/gameplay/physics/GravitySolver.gd`, `scripts/gameplay/launch/LaunchResolver.gd`
- Archivos:
- `scripts/gameplay/physics/GravitySolver.gd`
- `scripts/gameplay/launch/LaunchResolver.gd`
- Trabajo:
- combinar tangente orbital, impulso y gravedad relevante
- exponer simulacion discreta suficiente para validar saltos
- devolver motivos tecnicos de fallo cuando no hay captura de orbita
- mantener toda la resolucion de trayectorias en el plano de juego, sin usar profundidad
- Dependencias: 10, 12, 13
- Ver con humanos:
- elegir tuning inicial de gravedad y consumo antes de balance fino
- Criterio de cierre:
- un launch se puede simular y su resultado es reutilizable por generacion y gameplay
