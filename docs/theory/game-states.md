# 🧠 Estados de juego y control de flujo

## 📌 Introducción

En el desarrollo de videojuegos, el flujo del juego no es lineal, sino que se organiza en diferentes situaciones o modos.

Cada una de estas situaciones se modela como un **estado de juego**.

Este enfoque permite estructurar el comportamiento del sistema de forma clara y modular.

---

## 🎮 ¿Qué es un estado de juego?

Un estado de juego representa una fase específica del juego, por ejemplo:

* pantalla de inicio
* partida en curso
* pantalla de fin de juego

Cada estado define:

* qué se muestra en pantalla
* qué lógica se ejecuta
* qué entradas del usuario son válidas

---

## 🔁 Problema sin estados

Sin una estructura basada en estados, el código tiende a:

* mezclar múltiples responsabilidades
* depender de múltiples condiciones (`if` anidados)
* volverse difícil de mantener

Ejemplo conceptual:

```text
if (gameStarted && !gameOver) { ... }
else if (gameOver) { ... }
else { ... }
```

Este enfoque escala mal a medida que el juego crece.

---

## 🧩 Patrón State

Para resolver este problema se utiliza el **patrón State**, que permite:

* encapsular el comportamiento de cada estado
* cambiar dinámicamente el comportamiento del sistema
* reducir la complejidad condicional

En este proyecto se implementa mediante una interfaz común:

```java id="5b8t3k"
interface GameState {
  void update();
  void render();
  void keyPressed(char keyValue, int keyCodeValue);
  void keyReleased(char keyValue, int keyCodeValue);
}
```

---

## ⚙️ Implementación en el proyecto

El sistema se organiza alrededor de una clase central:

* `Game` → mantiene el estado actual

Cada estado implementa la interfaz `GameState`:

* `InicioState`
* `JugandoState`
* `GanadorState`

El cambio de estado se realiza mediante:

```java id="2x6c9r"
game.setState(new JugandoState(game));
```

---

## 🔄 Flujo del juego

El flujo del sistema puede representarse como:

```text id="3v9k1a"
Inicio → Jugando → Ganador → Jugando
```

Cada transición ocurre en respuesta a eventos:

* entrada del usuario
* condición de victoria
* reinicio del juego

---

## 🧠 Separación de responsabilidades

Cada estado tiene responsabilidades específicas:

### InicioState

* mostrar pantalla inicial
* esperar entrada del usuario

---

### JugandoState

* actualizar entidades
* procesar colisiones
* aplicar reglas del juego

---

### GanadorState

* mostrar resultado
* permitir reinicio

---

## 🎯 Ventajas del enfoque

El uso de estados permite:

* reducir la complejidad del código
* aislar comportamientos
* facilitar la extensión del sistema
* mejorar la legibilidad

Además, permite agregar nuevos estados sin modificar los existentes.

---

## 🎓 Relación con diseño de videojuegos

Desde el diseño, los estados representan:

* fases de la experiencia del jugador
* cambios en la interacción
* momentos del ciclo de juego

Esto se relaciona con la estructura narrativa y mecánica del juego.

---

## 🚀 Extensiones posibles

El sistema puede ampliarse incorporando nuevos estados:

* pausa
* menú de opciones
* pantalla de selección de nivel
* pantalla de transición

---

## 📌 Conclusión

El uso de estados es una estrategia fundamental para organizar el flujo de un videojuego.

Permite separar comportamientos, reducir complejidad y facilitar la evolución del sistema.

Su implementación desde etapas tempranas del desarrollo mejora significativamente la calidad del código y del diseño del juego.

---
⬅️ [Volver al README](../../README.md)
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)