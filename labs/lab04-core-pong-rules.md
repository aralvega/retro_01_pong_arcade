# 🧪 Lab 04 — Reglas fundamentales de Pong

## 🎯 Objetivo

Implementar las reglas básicas del juego Pong a partir de las entidades y el sistema de colisiones ya desarrollados.

En este laboratorio se incorporan:

* detección de salida lateral de la pelota
* sistema de puntaje
* reinicio de la pelota
* visualización del marcador (HUD)

---

## 🧠 Introducción

Hasta este punto, el sistema permite:

* representar entidades
* mover objetos en el espacio
* detectar colisiones

Sin embargo, el juego aún no define reglas claras.

En este laboratorio se introduce la lógica que transforma el sistema en un **juego completo**.

---

## 🎮 Regla principal

La mecánica central de Pong es simple:

* si la pelota sale por un lado, el jugador opuesto obtiene un punto
* luego, la pelota vuelve al centro

Esto define un ciclo continuo de juego.

---

## 📍 Detección de salida lateral

Se agregan métodos en la clase `Pelota`:

```java id="g5bzfw"
public boolean isOutLeft() {
  return this.position.x + this.radius < 0;
}

public boolean isOutRight() {
  return this.position.x - this.radius > Config.SCREEN_WIDTH;
}
```

Estos métodos permiten determinar cuándo la pelota abandona el área de juego.

---

## 🔁 Reinicio de la pelota

Cuando ocurre un punto, la pelota se reposiciona en el centro:

```java id="n5yq0n"
public void resetToCenter(boolean moveRight) {
  this.position.set(Config.SCREEN_WIDTH / 2.0f, Config.SCREEN_HEIGHT / 2.0f);
}
```

Además, se le asigna una nueva velocidad:

* dirección horizontal controlada
* componente vertical variable

Esto evita trayectorias repetitivas.

---

## 🧮 Sistema de puntaje

Cada paleta puede acumular puntos:

```java id="zyh4p6"
public void addPoint() {
  this.score++;
}
```

En esta fase:

* el jugador utiliza su propia paleta
* el rival se modela mediante un contador simple

---

## 🖥️ HUD (Head-Up Display)

Se incorpora una clase `HUD` para visualizar el puntaje:

```java id="8chvwd"
text(leftScore + "   :   " + rightScore, width / 2, 20);
```

Esto permite separar:

* lógica del juego
* representación de la información

---

## 🔄 Integración en el estado de juego

La lógica principal se implementa en `JugandoState`:

```java id="o3b7g1"
if (pelota.isOutLeft()) {
  rightScore++;
  pelota.resetToCenter(true);
}

if (pelota.isOutRight()) {
  jugador.addPoint();
  pelota.resetToCenter(false);
}
```

---

## 🧠 Flujo del juego

El ciclo del juego queda definido como:

```text id="0q6t8v"
movimiento → colisión → salida → puntaje → reinicio → movimiento
```

Este ciclo se repite continuamente durante la partida.

---

## 🔍 Ejercicio realizado

En este laboratorio se logró:

* detectar salida lateral de la pelota
* implementar sistema de puntaje
* reiniciar la pelota tras cada punto
* visualizar el marcador
* completar el ciclo básico del juego

---

## 🧠 Reflexión

Este laboratorio introduce una diferencia clave:

👉 pasar de simulación a sistema con reglas

A partir de aquí, el juego ya no es solo movimiento e interacción, sino un sistema con objetivos y consecuencias.

---

## 🚀 Próximo paso

En la siguiente etapa se incorporarán:

👉 oponente controlado por CPU
👉 condición de victoria
👉 nuevos estados del juego

---
⬅️ [Volver al README](../../README.md)
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)