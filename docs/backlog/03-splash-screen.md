# 03. Splash screen

- Objetivo: implementar la pantalla splash con transicion corta al home.
- Ownership: `scenes/ui/splash/SplashScreen.tscn`, `scripts/ui/splash/SplashScreen.gd`
- Archivos:
- `scenes/ui/splash/SplashScreen.tscn`
- `scripts/ui/splash/SplashScreen.gd`
- Trabajo:
- montar splash 2D con fondo espacial simple y nave o placeholder visual
- agregar temporizador o input para avanzar al home
- dejar hooks para reproducir musica inicial si existe
- Dependencias: 02
- Ver con humanos:
- confirmar si el splash avanza solo, por tap, o por ambas opciones
- Criterio de cierre:
- la splash entra desde `SceneRouter` y navega al home sin errores
