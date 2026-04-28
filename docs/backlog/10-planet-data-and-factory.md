# 10. Planet data and factory

- Objetivo: encapsular tipos, tamanos y creacion de planetas.
- Ownership: `scripts/gameplay/planet/PlanetFactory.gd`, `scripts/gameplay/planet/PlanetData.gd`, `scenes/gameplay/planet/Planet.tscn`
- Archivos:
- `scripts/gameplay/planet/PlanetFactory.gd`
- `scripts/gameplay/planet/PlanetData.gd`
- `scenes/gameplay/planet/Planet.tscn`
- Trabajo:
- definir 5 tamanos y 5 tipos visuales con gravedad asociada
- construir factory para instanciar un planeta con color, radio y masa
- forzar limite visual del planeta mas grande a 1/4 del ancho de pantalla
- Dependencias: 09
- Ver con humanos:
- confirmar valores exactos de gravedad por tipo antes de balance fino
- Criterio de cierre:
- el factory crea planetas consistentes con GDD y escala visual correcta
