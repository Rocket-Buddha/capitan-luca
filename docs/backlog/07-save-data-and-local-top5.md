# 07. Save data and local Top 5

- Objetivo: persistir settings y ranking local en disco.
- Ownership: `scripts/core/SaveData.gd`, `scripts/core/RankingStore.gd`
- Archivos:
- `scripts/core/SaveData.gd`
- `scripts/core/RankingStore.gd`
- Trabajo:
- definir schema local para audio settings y top 5
- guardar y leer datos desde `user://`
- exponer funciones para insertar score y truncar a 5 entradas
- Dependencias: 02
- Ver con humanos:
- confirmar si la fecha se guarda local del dispositivo o UTC normalizada
- Criterio de cierre:
- apagar/encender musica y ranking sobreviven reinicio del juego
