# 🧪 Lab 01 — Core Loop y estructura base del juego

## 🎯 Objetivo

Comprender e implementar la estructura fundamental de un videojuego:

* ciclo principal de ejecución (Game Loop)
* separación entre actualización y renderizado
* gestión del tiempo mediante delta time
* organización inicial del proyecto

---

## 🧠 Introducción

Todo videojuego se basa en un ciclo repetitivo conocido como **Game Loop**, que se ejecuta continuamente mientras el juego está activo.

Este ciclo sigue la siguiente estructura conceptual:

```text
input → update → render
```

Donde:

* **input**: captura las acciones del usuario
* **update**: actualiza el estado del juego
* **render**: dibuja el estado actual en pantalla

En Processing este ciclo está representado por la función `draw()`.

---

## 🏗️ Estructura implementada

En este proyecto, el ciclo principal se implementa de la siguiente forma:

```java
void draw() {
  Time.update(millis());
  game.update();
  game.render();
}
```

### Componentes involucrados

* `Time` → calcula el tiempo entre frames (`deltaTime`)
* `Game` → coordina el estado actual del juego
* `GameState` → define el comportamiento de cada estado

---

## ⏱️ Uso de delta time

El movimiento en el juego no depende del frame rate, sino del tiempo transcurrido entre frames.

```java
deltaTime = (currentTime - lastTime) / 1000.0f;
```

Esto permite:

* movimiento consistente en diferentes equipos
* independencia del rendimiento
* control más preciso de la simulación

---

## 🧩 Separación de responsabilidades

El proyecto evita concentrar toda la lógica en el `sketch` principal.

En cambio:

* `retro_01_pong_arcade.pde` → gestiona el ciclo general
* `Game` → delega comportamiento al estado actual
* `GameState` → define interfaz común
* `InicioState` y `JugandoState` → implementan lógica concreta

---

## 🎮 Estados del juego

Se introduce el concepto de **máquina de estados** para representar distintas fases del juego:

* `InicioState` → pantalla inicial
* `JugandoState` → gameplay

Cada estado define:

```java
void update();
void render();
void keyPressed(...);
void keyReleased(...);
```

---

## 🔍 Ejercicio realizado

En este laboratorio se logró:

* crear la estructura base del proyecto
* implementar el ciclo principal
* separar actualización y renderizado
* introducir el sistema de estados
* visualizar una pantalla inicial
* iniciar el juego con entrada de usuario
* mostrar una primera versión jugable con movimiento

---

## 🧠 Reflexión

Este laboratorio establece las bases de todo el desarrollo posterior.

Las decisiones tomadas aquí impactan directamente en:

* la claridad del código
* la facilidad de mantenimiento
* la escalabilidad del proyecto

Una mala estructura en esta etapa suele generar problemas difíciles de corregir más adelante.

---

## 🚀 Próximo paso

En el siguiente laboratorio se abordará:

👉 modelado de entidades del juego (paleta y pelota)
👉 movimiento basado en tiempo
👉 primeras interacciones visuales

---
⬅️ [Volver al README](../../README.md)