# 🎮 GDD – El Capitán Luca

## 1. Visión General

- **Título**: El Capitán Luca
- **Género**: Arcade / Endless / Skill-based
- **Plataforma**: Mobile (portrait)
- **Motor**: Godot Engine 4
- **Lenguaje**: GDScript
- **Resolución objetivo**: 1920x1080 (Full HD, escalado)
- **Assets**: Texture atlas (TexturePacker o equivalente)
- **Estilo**: Minimalista, pixel art, geométrico

### Premisa

Luca, un niño de 7 años, es enviado al espacio para encontrar planetas habitables debido a la contaminación en la Tierra.

El objetivo es recorrer la mayor cantidad de **años luz** posible mediante saltos planetarios.

---

## 2. Core Gameplay

### Loop principal

1. La nave orbita automáticamente un planeta
2. El jugador mantiene presionado para cargar impulso
3. Suelta para ejecutar el salto
4. La trayectoria se calcula con física (vectores)
5. Intenta alcanzar un nuevo planeta
6. Repite hasta perder

---

## 3. Controles

- **Tap sostenido** → carga de impulso
- **Release** → ejecución del salto
- Barra visual indica potencia del impulso

---

## 4. Física del juego

### Vectores involucrados

- Vector tangencial de la órbita
- Vector de impulso del jugador
- Gravedad del planeta actual
- Gravedad de planetas cercanos

La trayectoria final es la suma de estos vectores.

---

## 5. Planetas

### Generación

- Procedural infinita
- Siempre hay entre **1 y 3 planetas alcanzables**

### Tipos (inferencia visual)

| Tipo     | Color | Nivel gravedad | Slot |
|----------|------|----------------|------|
| Enano    | Gris | Muy baja       | 1/5  |
| Gaseoso  | Amarillo | Media-baja | 2/5  |
| Verde    | Verde | Media         | 3/5  |
| Azul     | Azul | Media-alta     | 4/5  |
| Rojo     | Rojo | Alta           | 5/5  |

- La gravedad real se oculta
- El jugador la infiere por tamaño + color

---

## 6. Power-ups

### Tipos

- ⛽ Recarga de combustible
- ⚡ Cálculo orbital

### Comportamiento

- Orbitan el planeta
- Velocidad = **½ de la velocidad mínima orbital**
- Garantiza colisión eventual con la nave

### Cálculo orbital

- Máximo acumulable: **3**

#### Opción A (detallado)
Muestra:
- Vector tangencial
- Gravedad del planeta actual
- Gravedad de otros planetas
- Dirección del input
- Trayectoria estimada

#### Opción B (simplificado)
- Muestra **vector final resultante**

*(Decisión pendiente)*

---

## 7. Combustible

- Recurso limitado
- Se consume en cada impulso
- Se recarga con power-ups

---

## 8. Condiciones de derrota

- Sin combustible
- Perdido en el espacio (sin órbita)
- Salir del mapa
- Colisión con otro planeta
- **Colisión con el propio planeta al salir**

---

## 9. UI / UX

### Pantallas

#### Splash
- Nave + espacio

#### Home
- Botón **Jugar**
- Botón **Settings**
- Botón **?** (historia + créditos)

#### Settings (modal)
- Música ON/OFF
- SFX ON/OFF
- Ver ranking

#### Ranking
- Top 5 jugadores
- Persistente local

#### Game Over
- Mensaje "Game Over"
- Motivo de derrota
- Años luz recorridos
- Si entra en Top 5:
  - Input nombre
- Botones:
  - Reintentar
  - Volver al menú

---

## 10. HUD In-game

- Barra de combustible
- Distancia en años luz
- Botón ⚡ (cálculo orbital)
- Indicador de carga de impulso

---

## 11. Arte

### Estilo

- Pixel art simple
- Cartoon / amigable
- Bajo costo de producción

### Elementos

- Planetas → círculos
- Nave → triángulo
- Power-ups → cuadrados

### Fondo

- Parallax de estrellas (2–3 capas)

---

## 12. Audio

### Música
- Loop espacial ambiental
- Fuente:
  - OpenGameArt
  - Free Music Archive

### SFX
- Impulso
- Recolección
- Game Over

---

## 13. Filosofía de diseño

- Arcade clásico
- Sin guardado de partida
- Sesiones cortas
- Skill-based
- Aprendizaje por intuición

---

## 14. Pendientes

- Definir opción final de cálculo orbital
- Balancear gravedad vs distancia
- Ajustar consumo de combustible
- Feedback visual de velocidad orbital