# 23. Mobile safe area and touch tuning

- Objetivo: ajustar UI e input para portrait mobile real.
- Ownership: `scripts/ui/MobileSafeArea.gd`, `scripts/gameplay/input/AimController.gd`, `scenes/ui/home/HomeScreen.tscn`
- Archivos:
- `scripts/ui/MobileSafeArea.gd`
- `scripts/gameplay/input/AimController.gd`
- `scenes/ui/home/HomeScreen.tscn`
- Trabajo:
- respetar safe area en top/bottom UI
- revisar tamanos tactiles de `Jugar`, `Settings`, `?`, pausa y boton orbital
- ajustar sensibilidad de hold/release para pantallas chicas
- verificar que el gameplay visual 3D mantenga lectura clara en mobile portrait
- Dependencias: 04, 13, 18
- Ver con humanos:
- confirmar dispositivos objetivo minimos para validar safe area y DPI
- Criterio de cierre:
- UI no pisa bordes criticos y el input se siente consistente en mobile portrait
