# 16. Fuel system and fuel powerup

- Objetivo: descontar combustible por impulso y recargarlo con pickups.
- Ownership: `scripts/gameplay/session/FuelState.gd`, `scripts/gameplay/powerups/FuelRechargePowerUp.gd`
- Archivos:
- `scripts/gameplay/session/FuelState.gd`
- `scripts/gameplay/powerups/FuelRechargePowerUp.gd`
- Trabajo:
- definir tanque maximo y costo por impulso
- bloquear lanzamiento cuando no hay combustible
- aplicar recarga al recolectar el powerup verde
- mantener el estado de combustible separado de la capa visual que lo representa
- Dependencias: 13, 15
- Ver con humanos:
- confirmar si la recarga suma valor fijo o porcentaje del tanque
- Criterio de cierre:
- el combustible se consume, recarga y puede causar derrota por agotamiento
