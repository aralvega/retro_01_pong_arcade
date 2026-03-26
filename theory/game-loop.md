# 🧠 Game Loop — Fundamento de los videojuegos

## 📌 Introducción

Todo videojuego, independientemente de su complejidad, se basa en un principio fundamental: la ejecución continua de un ciclo que actualiza y representa el estado del juego en pantalla.

Este ciclo se conoce como **Game Loop** (bucle del juego) y constituye la base de cualquier sistema interactivo en tiempo real.

---

## 🔁 Estructura conceptual

El Game Loop puede representarse de forma simplificada como:

```text
input → update → render
```

Donde cada etapa cumple un rol específico:

* **Input**: captura las acciones del jugador (teclado, mouse, controladores)
* **Update**: modifica el estado interno del juego en función del tiempo y las entradas
* **Render**: dibuja el estado actual del juego en pantalla

Este ciclo se ejecuta repetidamente mientras el juego está activo.

---

## ⏱️ Naturaleza del ciclo

A diferencia de los programas tradicionales, que suelen ejecutarse de forma secuencial y finalizar, un videojuego:

* permanece en ejecución constante
* responde a eventos en tiempo real
* actualiza su estado múltiples veces por segundo

En este sentido, el Game Loop puede interpretarse como un sistema que simula continuamente una realidad dinámica.

---

## 🧩 Implementación en Processing

En Processing, el Game Loop está implícito en la función `draw()`, que se ejecuta automáticamente en cada frame.

Una implementación estructurada puede adoptar la siguiente forma:

```java
void draw() {
  Time.update(millis());
  game.update();
  game.render();
}
```

Aquí se distinguen claramente dos responsabilidades principales:

* actualización del estado (`update`)
* representación visual (`render`)

La captura de entrada se gestiona mediante eventos como `keyPressed()` y `keyReleased()`.

---

## ⚖️ Separación de responsabilidades

Una buena implementación del Game Loop evita mezclar lógica y renderizado.

Esto implica:

* no dibujar dentro de `update()`
* no modificar el estado dentro de `render()`

Esta separación permite:

* mayor claridad del código
* facilidad de mantenimiento
* posibilidad de escalar el sistema

---

## ⏳ Delta Time y consistencia temporal

El tiempo entre frames no es constante. Factores como el rendimiento del sistema pueden provocar variaciones.

Para evitar que el comportamiento del juego dependa del frame rate, se utiliza el concepto de **delta time**.

```java
deltaTime = (currentTime - lastTime) / 1000.0f;
```

El movimiento se expresa entonces en función del tiempo:

```java
position += velocity * deltaTime;
```

Esto garantiza:

* consistencia en la simulación
* comportamiento uniforme en distintos dispositivos
* mayor control sobre la velocidad del juego

---

## 🧠 Interpretación conceptual

El Game Loop no es solo una estructura técnica, sino también un modelo conceptual:

* representa la evolución del estado del juego en el tiempo
* permite pensar el juego como un sistema dinámico
* establece una relación directa entre entrada, simulación y representación

Desde esta perspectiva, el desarrollo de videojuegos puede entenderse como el diseño de sistemas que evolucionan en ciclos discretos.

---

## 🎮 Aplicación en este proyecto

En este proyecto, el Game Loop se implementa mediante:

* una clase `Game` que coordina el flujo
* una interfaz `GameState` que define comportamientos
* estados concretos que encapsulan la lógica

Esto permite:

* desacoplar el flujo del juego
* representar distintas fases (inicio, juego, fin)
* facilitar la extensión del sistema

---

## 📌 Conclusión

El Game Loop constituye el núcleo de cualquier videojuego.

Comprender su funcionamiento permite:

* diseñar sistemas interactivos de forma estructurada
* controlar el comportamiento del juego en el tiempo
* construir arquitecturas claras y escalables

Una implementación correcta desde el inicio evita problemas complejos en etapas posteriores del desarrollo.

---
