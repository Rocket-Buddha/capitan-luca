# 19. Defeat reasons and game over

- Objetivo: cerrar la corrida con motivo explicito y modal 2D de game over.
- Ownership: `scripts/gameplay/session/DefeatRules.gd`, `scenes/ui/game/GameOverModal.tscn`, `scripts/ui/game/GameOverModal.gd`
- Archivos:
- `scripts/gameplay/session/DefeatRules.gd`
- `scenes/ui/game/GameOverModal.tscn`
- `scripts/ui/game/GameOverModal.gd`
- Trabajo:
- detectar derrota por combustible, perdida de orbita, salida de mapa, colision ajena o colision con planeta propio
- mostrar motivo, anios luz y acciones `Reintentar` y `Volver al menu`
- presentar el modal sobre la corrida congelada sin romper la lectura de pantalla
- Dependencias: 14, 16, 18
- Ver con humanos:
- confirmar copy final de cada motivo de derrota
- Criterio de cierre:
- toda derrota termina en un modal consistente y navegable
