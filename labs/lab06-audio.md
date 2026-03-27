# 🧪 Lab 06 — Audio de juego (Parte 02)

## 🎯 Objetivo

Incorporar retroalimentación sonora al juego para mejorar la experiencia del jugador y reforzar los eventos clave del sistema.

En este laboratorio se implementan:

* reproducción de sonido en eventos relevantes
* integración de la librería de audio de Processing
* desacoplamiento entre lógica de juego y reproducción sonora

---

## 🧠 Introducción

Hasta este punto, el juego cuenta con:

* mecánicas completas
* sistema de colisiones
* inteligencia artificial
* balance de dificultad

Sin embargo, la experiencia es exclusivamente visual.

El sonido permite reforzar:

* impacto de las interacciones
* percepción de respuesta del sistema
* inmersión del jugador

---

## 🔊 Eventos sonoros

Se identifican tres eventos principales:

* colisión con paleta
* colisión con pared
* obtención de punto

Cada uno de estos eventos se asocia a un sonido específico.

---

## 📦 Librería utilizada

Se utiliza la librería oficial:

```text
processing.sound
```

Esta permite cargar y reproducir archivos de audio de forma sencilla.

---

## 📁 Organización de archivos

Los sonidos se almacenan en:

```text id="l6p2f1"
assets/sounds/
```

Ejemplo:

```text id="l6p2f2"
boundpalette.wav
boundwall.wav
outball.wav
```

---

## 🧱 Clase AudioManager

Se encapsula la lógica de audio en una clase específica:

```java id="l6p2f3"
class AudioManager {
  playPaddle()
  playWall()
  playScore()
}
```

Esto permite:

* centralizar el acceso a los sonidos
* evitar duplicación de código
* mejorar la organización del proyecto

---

## 🔗 Integración con el sistema

El `AudioManager` se instancia en la clase `Game`, que actúa como punto central del sistema.

Los estados del juego acceden al audio mediante:

```java id="l6p2f4"
game.getAudio().playPaddle();
```

---

## ⚙️ Disparo de eventos

El sonido no se reproduce directamente desde las entidades, sino desde el estado de juego.

Ejemplo:

```java id="l6p2f5"
boolean hitPlayer = pelota.checkCollision(jugador);

if (hitPlayer) {
  game.getAudio().playPaddle();
}
```

---

## 🧠 Separación de responsabilidades

El sistema queda organizado de la siguiente manera:

* `Pelota` → detecta colisiones
* `JugandoState` → interpreta eventos
* `AudioManager` → reproduce sonido

Esto evita acoplamiento innecesario entre lógica y presentación.

---

## 🎮 Resultado

La incorporación de audio permite:

* reforzar visualmente los eventos
* mejorar la percepción de impacto
* aumentar la inmersión

El juego pasa de ser una simulación funcional a una experiencia más completa.

---

## 🔍 Ejercicio realizado

En este laboratorio se logró:

* integrar sonido en el proyecto
* reproducir audio en eventos clave
* desacoplar lógica de juego y feedback
* mejorar la experiencia del usuario

---

## 🧠 Reflexión

El audio no modifica las reglas del juego, pero sí modifica la forma en que el jugador percibe el sistema.

Pequeños efectos sonoros pueden generar una gran diferencia en la calidad percibida del juego.

---

## 🚀 Próximo paso

Con el sistema completamente funcional y enriquecido con feedback audiovisual, el siguiente paso consiste en:

👉 capturas de pantalla
👉 generación de GIF
👉 presentación visual del proyecto

---
⬅️ [Volver al README](../../README.md)
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)