# 06. Settings modal and ranking

- Objetivo: implementar el modal de ajustes con ranking Top 5 integrado.
- Ownership: `scenes/ui/home/SettingsModal.tscn`, `scripts/ui/home/SettingsModal.gd`
- Archivos:
- `scenes/ui/home/SettingsModal.tscn`
- `scripts/ui/home/SettingsModal.gd`
- Trabajo:
- toggles `Musica` y `SFX`
- tabla compacta Top 5 dentro del mismo modal
- columnas `nombre`, `puntaje`, `fecha`
- API publica para recibir datos ya ordenados desde servicio externo
- Dependencias: 04, 07, 08
- Ver con humanos:
- confirmar formato visual de fecha y si el ranking permite scroll en pantallas chicas
- Criterio de cierre:
- el modal renderiza toggles y ranking en una sola pieza reutilizable
