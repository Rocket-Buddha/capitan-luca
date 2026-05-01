# AGENTS

## Godot local setup

- Prefer the local Godot binaries stored in `bin/`.
- Prefer the local libGDX `TexturePacker` standalone JAR stored in `bin/` when generating atlases.
- Do not commit files from `bin/`; the folder is ignored by Git.

## Executables

- Console binary for automation:
  - `bin/Godot_v4.6.2-stable_win64.exe/Godot_v4.6.2-stable_win64_console.exe`
- Visual editor binary:
  - `bin/Godot_v4.6.2-stable_win64.exe/Godot_v4.6.2-stable_win64.exe`
- Atlas generation tool:
  - `bin/runnable-texturepacker.jar`

## Usage

- Prefer the console binary for scripts, imports, validation, exports, and headless runs.
- Use the visual editor binary only when an interactive editor session is needed.
- Prefer the standalone `TexturePacker` JAR for atlas generation instead of installing full libGDX.
- Invoke the packer with local Java:
  - `java -cp .\bin\runnable-texturepacker.jar com.badlogic.gdx.tools.texturepacker.TexturePacker <inputDir> <outputDir> <packFileName>`

## Scene-first configuration

- Prefer defining persistent scene configuration in `.tscn` files and reusable `.tres` resources instead of assigning it from GDScript at runtime.
- If a value is expected to stay the same for the whole lifetime of a scene, author it in the scene or resource, not in code.
- Use GDScript for game logic, runtime state changes, wiring that cannot be serialized cleanly in the scene, and computed behavior.
- If a value must remain configurable from code because it participates in runtime behavior, expose it with `@export` instead of hardcoding it in the script.

## Typed GDScript

- Keep all gameplay and UI GDScripts fully typed.
- Add explicit types to exported properties, member variables, `@onready` references, function parameters, and return values.
- Prefer typed locals as well when inference would be ambiguous or reduce readability.

## Example commands

```powershell
& ".\bin\Godot_v4.6.2-stable_win64.exe\Godot_v4.6.2-stable_win64_console.exe" --version
& ".\bin\Godot_v4.6.2-stable_win64.exe\Godot_v4.6.2-stable_win64_console.exe" --headless --path . --quit
& ".\bin\Godot_v4.6.2-stable_win64.exe\Godot_v4.6.2-stable_win64.exe" --editor --path .
java -cp ".\bin\runnable-texturepacker.jar" com.badlogic.gdx.tools.texturepacker.TexturePacker .\capitan-luca\assets\raw .\capitan-luca\assets\atlas game
```
