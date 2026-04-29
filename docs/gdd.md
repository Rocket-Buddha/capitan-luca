# GDD - El Capitan Luca

## 1. Vision General

- **Titulo**: El Capitan Luca
- **Genero**: Arcade / Endless / Skill-based
- **Plataforma**: Mobile (portrait)
- **Motor**: Godot Engine 4
- **Lenguaje**: GDScript
- **Resolucion objetivo**: 1920x1080 (Full HD, escalado)
- **Assets**: Texture atlas (TexturePacker o equivalente)
- **Estilo**: Minimalista, pixel art, geometrico

### Premisa

Luca, un nino de 7 anios, es enviado al espacio para encontrar planetas habitables debido a la contaminacion en la Tierra.

El objetivo es recorrer la mayor cantidad de **anios luz** posible mediante saltos planetarios.

### Definicion visual

- La navegacion del juego y su UI viven en 2D.
- El gameplay se presenta en 3D, pero debe verse esencialmente igual al mockup actual.
- La profundidad no cambia fisicas, colisiones ni decisiones del jugador.
- El 3D se usa para sumar vida visual: rotacion de planetas, volumen sutil y animaciones simples.

---

## 2. Core Gameplay

### Loop principal

1. La nave orbita automaticamente un planeta
2. El jugador mantiene presionado para cargar impulso
3. Suelta para ejecutar el salto
4. La trayectoria se calcula con fisica (vectores)
5. Intenta alcanzar un nuevo planeta
6. Repite hasta perder

---

## 3. Controles

- **Tap sostenido** -> carga de impulso
- **Release** -> ejecucion del salto
- Durante la seleccion de direccion se muestra un unico indicador de carga
- El indicador muestra direccion y potencia del impulso en la direccion hacia el dedo del jugador
- El indicador no aparece al lado del dedo, sino orientado segun la direccion apuntada
- El indicador de impulso es relativamente corto y no invade gran parte de la pantalla
- Su forma base es un triangulo sutil orientado desde la nave
- El triangulo se va llenando progresivamente segun la potencia acumulada
- A maxima carga el relleno llega a rojo

---

## 4. Fisica del juego

### Vectores involucrados

- Vector tangencial de la orbita
- Vector de impulso del jugador
- Gravedad del planeta actual
- Gravedad de planetas cercanos

La trayectoria final es la suma de estos vectores.

- La logica fisica se resuelve en un mismo plano de juego.
- El uso de 3D no agrega nuevas reglas de profundidad.

---

## 5. Planetas

### Generacion

- Procedural infinita
- Siempre hay entre **1 y 3 planetas alcanzables**

### Tamanos

- Existen **5 tamanos** de planetas: diminuto, pequeno, mediano, grande y muy grande
- El planeta actual no recibe zoom especial por camara
- El planeta actual mantiene una escala visual consistente con los demas planetas visibles
- El planeta mas grande no puede ocupar mas de **1/4 del ancho horizontal** de la pantalla

### Tipos (inferencia visual)

| Tipo     | Color     | Nivel gravedad | Slot |
|----------|-----------|----------------|------|
| Enano    | Gris      | Muy baja       | 1/5  |
| Gaseoso  | Amarillo  | Media-baja     | 2/5  |
| Verde    | Verde     | Media          | 3/5  |
| Azul     | Azul      | Media-alta     | 4/5  |
| Rojo     | Rojo      | Alta           | 5/5  |

- La gravedad real se oculta
- El jugador la infiere por tamano + color

---

## 6. Power-ups

### Tipos

- Recarga de combustible
- Calculo orbital

### Referencias visuales

Recarga de combustible:

<img src="mockups/fuel-recharge-icon-v02.png" alt="Icono Recarga de combustible" width="160" height="160">

Calculo orbital:

<img src="mockups/orbital-calculation-icon-v02.png" alt="Icono Calculo orbital" width="160" height="160">

### Comportamiento

- Orbitan el planeta
- Velocidad = **1/2 de la velocidad minima orbital**
- Garantiza colision eventual con la nave

### Calculo orbital

- Maximo acumulable: **3**
- Si no esta habilitado, no se muestran ayudas visuales de trayectoria o vectores
- Sin calculo orbital activo, el unico feedback de apuntado es el indicador de carga del impulso

#### Opcion A (detallado)
Muestra:
- Vector tangencial
- Gravedad del planeta actual
- Gravedad de otros planetas
- Direccion del input
- Trayectoria estimada

#### Opcion B (simplificado)
- Muestra **vector final resultante**

*(Decision pendiente)*

---

## 7. Combustible

- Recurso limitado
- Se consume en cada impulso
- Se recarga con power-ups

---

## 8. Condiciones de derrota

- Sin combustible
- Perdido en el espacio (sin orbita)
- Salir del mapa
- Colision con otro planeta
- **Colision con el propio planeta al salir**

---

## 9. UI / UX

### Pantallas

#### Splash
- Pantalla 2D
- Nave + espacio
- Referencia visual de personaje / tono:

<img src="concept/capitan-luca-concept-v02.png" alt="Concept Capitan Luca" width="470" height="836">

#### Home
- UI 2D
- Fondo espacial con el mismo lenguaje visual del gameplay
- Logo principal
- Boton **Jugar**
- Boton **Settings**
- Boton **?** (historia + creditos)
- Referencia visual de logo:

<img src="concept/capitan-luca-logo-v02.png" alt="Logo Capitan Luca" width="768" height="512">

- Referencia visual del modal de historia y creditos:

<img src="mockups/home-history-credits-modal-mockup-v01.png" alt="Mockup modal Historia y Creditos" width="497" height="790">

#### Settings (modal)
- Musica ON/OFF
- SFX ON/OFF
- Top 5 integrado en el mismo modal
- Cada entrada muestra: nombre, puntaje y fecha

- Referencia visual actual:

<img src="mockups/home-settings-modal-mockup-v02.png" alt="Mockup modal Settings" width="470" height="836">

#### Ranking
- Top 5 jugadores
- Persistente local
- Se muestra dentro del modal de Settings
- Cada entrada muestra: nombre, puntaje y fecha

#### Game Over
- Mensaje "Game Over"
- Motivo de derrota
- Anios luz recorridos
- Si entra en Top 5:
  - Input nombre
- Botones:
  - Reintentar
  - Volver al menu

---

## 10. HUD In-game

### Composicion in-game

- El planeta actual siempre queda centrado en el eje horizontal de la pantalla
- Su posicion vertical queda lo mas abajo posible
- El planeta y su orbita deben permanecer completamente visibles dentro de pantalla
- Las orbitas visibles se representan como circulos, no como elipses
- El planeta actual no se agranda por estar en foco
- La lectura general del gameplay debe mantenerse frontal y clara
- El 3D no debe introducir confusion de profundidad

### HUD

- Boton de pausa en la esquina superior derecha
- Barra de combustible en la parte superior izquierda
- Distancia en anios luz centrada en la parte superior
- Boton de calculo orbital en la esquina inferior derecha
- Indicador de carga de impulso orientado hacia la direccion seleccionada por el jugador
- El indicador de carga no se dibuja junto al dedo o punto de contacto
- El indicador de carga usa una lectura visual triangular, sutil y de longitud contenida

### Referencia visual actual

<img src="mockups/ingame-mockup-v03.png" alt="Mockup In-game" width="512" height="768">

---

## 11. Arte

### Estilo

- Pixel art simple
- Cartoon / amigable
- Bajo costo de produccion
- UI limpia en 2D y gameplay con volumen 3D muy controlado

### Elementos

- Planetas -> volumen simple con silueta circular; pueden rotar sobre su eje
- Nave -> triangulo simple con lectura frontal
- Power-ups -> formas simples, claras y faciles de leer

### Fondo

- Espacio estilizado coherente entre home y gameplay
- Parallax de estrellas (2-3 capas) cuando sume a la lectura

---

## 12. Audio

### Musica
- Loop espacial ambiental
- Fuente:
  - OpenGameArt
  - Free Music Archive

### SFX
- Impulso
- Recoleccion
- Game Over

---

## 13. Filosofia de diseno

- Arcade clasico
- Sin guardado de partida
- Sesiones cortas
- Skill-based
- Aprendizaje por intuicion

---

## 14. Pendientes

- Definir opcion final de calculo orbital
- Balancear gravedad vs distancia
- Ajustar consumo de combustible
- Feedback visual de velocidad orbital
