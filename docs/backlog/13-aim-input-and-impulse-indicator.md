# 13. Aim input and impulse indicator

- Objetivo: capturar hold/release y dibujar el indicador triangular de impulso.
- Ownership: `scripts/gameplay/input/AimController.gd`, `scripts/gameplay/input/ImpulseIndicator.gd`
- Archivos:
- `scripts/gameplay/input/AimController.gd`
- `scripts/gameplay/input/ImpulseIndicator.gd`
- Trabajo:
- detectar direccion hacia el dedo
- acumular potencia mientras el input esta sostenido
- dibujar triangulo corto, sutil, orientado desde la nave y llenado hasta rojo
- Dependencias: 12
- Ver con humanos:
- confirmar duracion maxima de carga y curva de llenado visual
- Criterio de cierre:
- el jugador puede apuntar y ver direccion/potencia sin overlays extra junto al dedo
