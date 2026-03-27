# 🧪 Lab 06 — Balance y refinamiento del juego (Parte 01)

## 🎯 Objetivo

Refinar la experiencia de juego mediante el ajuste de parámetros que afectan la dificultad, la respuesta del sistema y la percepción del jugador.

En este laboratorio se abordan:

* ajuste de velocidad de entidades
* control de dificultad
* introducción de imperfecciones en la IA
* estabilización del comportamiento del sistema

---

## 🧠 Introducción

Una vez que el juego es funcional, el siguiente paso consiste en mejorar la experiencia del jugador.

Este proceso, conocido como **balance**, no implica agregar nuevas funcionalidades, sino ajustar las existentes para lograr:

* desafío adecuado
* comportamiento creíble
* experiencia fluida

---

## ⚖️ Parámetros de balance

El comportamiento del juego depende de la relación entre múltiples variables:

* velocidad de la pelota
* velocidad del jugador
* velocidad de la CPU
* precisión de la IA
* progresión de dificultad

Modificar estos valores cambia significativamente la experiencia.

---

## 🎮 Ajuste de velocidades

Se establecen los siguientes valores:

```text id="b7z1x2"
Jugador → 320
CPU → 200
Pelota inicial → 250
```

Estos valores permiten:

* que el jugador tenga control suficiente
* que la CPU sea competitiva
* que el inicio del juego no sea trivial

---

## 🤖 Imperfección controlada de la IA

Se introduce un error en el seguimiento de la pelota:

```text id="f2p9w1"
trackingError ∈ [-6, 6]
```

Este error:

* evita que la CPU sea perfecta
* introduce variabilidad
* permite que el jugador gane

---

## ⏱️ Estabilización del error

El error no se recalcula en cada frame, sino en intervalos de tiempo:

```text id="z3m8k4"
errorInterval = 0.45s
```

Esto permite:

* evitar vibración
* generar movimiento más natural
* mejorar la percepción del comportamiento

---

## 🎯 Comportamiento contextual

La CPU adapta su comportamiento según la dirección de la pelota:

* si la pelota se acerca → seguimiento preciso
* si se aleja → reposicionamiento hacia el centro

Esto mejora:

* la preparación defensiva
* la coherencia del comportamiento

---

## 📈 Progresión de dificultad

La velocidad de la pelota aumenta tras cada colisión:

```text id="y6k2n8"
speed *= 1.03
```

Además, se establece un límite máximo:

```text id="x9v4c7"
150 ≤ speed ≤ 420
```

Esto permite:

* incremento gradual del desafío
* evitar situaciones injugables

---

## 🔄 Reinicio controlado

Al reiniciar la pelota:

```text id="m4n7q2"
velocity.y ∈ [-120, 120]
```

Esto evita:

* trayectorias repetitivas
* patrones predecibles

---

## 🔍 Ejercicio realizado

En este laboratorio se logró:

* mejorar la dificultad del juego
* estabilizar el comportamiento de la CPU
* introducir imperfección controlada
* ajustar la progresión de velocidad
* lograr una experiencia más equilibrada

---

## 🧠 Reflexión

El balance no consiste en hacer el juego más difícil o más fácil, sino en lograr una relación adecuada entre:

* capacidad del jugador
* comportamiento del sistema
* progresión del desafío

Pequeños cambios en parámetros pueden producir grandes diferencias en la experiencia.

---

## 🚀 Próximo paso

En la siguiente etapa se abordará:

👉 mejoras de UX
👉 feedback visual
👉 presentación del juego
👉 material visual para portfolio

---
⬅️ [Volver al README](../../README.md)
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)