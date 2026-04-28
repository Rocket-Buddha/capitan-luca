# 22. Placeholder asset integration

- Objetivo: convertir decisiones visuales del GDD en assets placeholder usables por el proyecto.
- Ownership: `assets/ui/`, `assets/gameplay/`, `scripts/ui/IconLibrary.gd`
- Archivos:
- `assets/ui/orbital-calculation-icon.png`
- `assets/ui/fuel-recharge-icon.png`
- `assets/ui/logo.png`
- `scripts/ui/IconLibrary.gd`
- Trabajo:
- importar placeholders desde `docs/mockups` y `docs/concept`
- mapear rutas de iconos y logo en un solo helper
- evitar referencias directas a `docs/` desde escenas de runtime
- Dependencias: 04, 15, 18
- Ver con humanos:
- confirmar que las versiones `v02` actuales son las que pasan a runtime
- Criterio de cierre:
- escenas y UI consumen assets desde `assets/` y no desde carpeta de documentacion
