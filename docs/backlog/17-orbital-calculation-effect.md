# 17. Orbital calculation effect

- Objetivo: aplicar el efecto del powerup de calculo orbital con contador acumulable.
- Ownership: `scripts/gameplay/session/OrbitalCalculationState.gd`, `scripts/gameplay/powerups/OrbitalCalculationPowerUp.gd`
- Archivos:
- `scripts/gameplay/session/OrbitalCalculationState.gd`
- `scripts/gameplay/powerups/OrbitalCalculationPowerUp.gd`
- Trabajo:
- acumular hasta 3 cargas
- habilitar y consumir cargas desde HUD
- exponer datos de ayuda visual al sistema de juego
- mantener las ayudas alineadas a la vista del gameplay sin cambiar la logica del plano
- Dependencias: 15, 18
- Ver con humanos:
- decision pendiente del GDD: opcion A detallada vs opcion B simplificada
- recomendacion: implementar primero opcion B y dejar hooks para expandir
- Criterio de cierre:
- el estado del powerup existe, se acumula y puede habilitar ayudas temporales
