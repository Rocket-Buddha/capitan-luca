# 11. Procedural run generator

- Objetivo: generar el planeta actual y los siguientes candidatos de una corrida endless.
- Ownership: `scripts/gameplay/generation/RunGenerator.gd`
- Archivos:
- `scripts/gameplay/generation/RunGenerator.gd`
- Trabajo:
- generar secuencias de planetas hacia arriba de pantalla
- garantizar entre 1 y 3 planetas alcanzables por tramo
- devolver data desacoplada de la escena para luego instanciar
- Dependencias: 10, 14
- Ver con humanos:
- validar semilla fija para debug y semilla random para release
- Criterio de cierre:
- el generador produce lotes reproducibles y compatibles con el solver de alcance
