# Capitan Luca

Proyecto Godot para `El Capitan Luca`.

## Estructura

- `capitan-luca/`: proyecto Godot
- `docs/`: GDD, backlog, mockups y concept
- `bin/`: herramientas locales no versionadas

## Godot local

Binarios locales:

- `bin/Godot_v4.6.2-stable_win64.exe/Godot_v4.6.2-stable_win64_console.exe`
- `bin/Godot_v4.6.2-stable_win64.exe/Godot_v4.6.2-stable_win64.exe`

Ejemplos:

```powershell
& ".\bin\Godot_v4.6.2-stable_win64.exe\Godot_v4.6.2-stable_win64_console.exe" --headless --path .\capitan-luca --quit
& ".\bin\Godot_v4.6.2-stable_win64.exe\Godot_v4.6.2-stable_win64.exe" --editor --path .\capitan-luca
```

## Atlas con TexturePacker

El repo incluye el standalone oficial de libGDX en:

- `bin/runnable-texturepacker.jar`

No hace falta instalar libGDX completo. Con Java disponible, se puede correr directamente:

```powershell
java -cp ".\bin\runnable-texturepacker.jar" com.badlogic.gdx.tools.texturepacker.TexturePacker <inputDir> <outputDir> <packFileName>
```

Ejemplo:

```powershell
java -cp ".\bin\runnable-texturepacker.jar" com.badlogic.gdx.tools.texturepacker.TexturePacker .\capitan-luca\assets\raw .\capitan-luca\assets\atlas game
```

El argumento opcional extra es `settingsFileName`, por ejemplo para usar un `pack.json` del directorio de entrada.

## Notas

- `bin/` esta ignorado por Git.
- Si se generan atlas para runtime, conviene dejarlos dentro de `capitan-luca/assets/`.
