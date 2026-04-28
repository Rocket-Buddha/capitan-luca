# AGENTS

## Godot local setup

- Prefer the local Godot binaries stored in `bin/`.
- Do not commit files from `bin/`; the folder is ignored by Git.

## Executables

- Console binary for automation:
  - `bin/Godot_v4.6.2-stable_win64.exe/Godot_v4.6.2-stable_win64_console.exe`
- Visual editor binary:
  - `bin/Godot_v4.6.2-stable_win64.exe/Godot_v4.6.2-stable_win64.exe`

## Usage

- Prefer the console binary for scripts, imports, validation, exports, and headless runs.
- Use the visual editor binary only when an interactive editor session is needed.

## Example commands

```powershell
& ".\bin\Godot_v4.6.2-stable_win64.exe\Godot_v4.6.2-stable_win64_console.exe" --version
& ".\bin\Godot_v4.6.2-stable_win64.exe\Godot_v4.6.2-stable_win64_console.exe" --headless --path . --quit
& ".\bin\Godot_v4.6.2-stable_win64.exe\Godot_v4.6.2-stable_win64.exe" --editor --path .
```
