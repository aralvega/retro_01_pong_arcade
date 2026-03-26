# 🧠 Reglas de juego y sistemas interactivos

## 📌 Introducción

En el desarrollo de videojuegos, no basta con simular movimiento o detectar colisiones.
Un juego requiere un conjunto de reglas que definan:

* objetivos
* condiciones de éxito o fracaso
* consecuencias de las acciones

Estas reglas transforman una simulación en una experiencia interactiva con sentido.

---

## 🎮 Simulación vs. sistema de juego

Es importante distinguir entre dos niveles:

### 🔄 Simulación

Describe el comportamiento del sistema:

* movimiento de objetos
* colisiones
* interacción física básica

Una simulación puede ser visualmente atractiva, pero no necesariamente constituye un juego.

---

### 🎯 Sistema de juego

Introduce reglas que definen:

* qué significa ganar o perder
* cómo se obtiene puntaje
* qué eventos tienen consecuencias

Este nivel convierte la simulación en una experiencia significativa.

---

## 🧩 Reglas en Pong

El juego Pong se basa en reglas simples pero efectivas:

* la pelota se desplaza continuamente
* las paletas pueden interceptarla
* si la pelota sale por un lado, el jugador opuesto obtiene un punto
* el juego continúa hasta alcanzar una condición de victoria

Estas reglas definen el ciclo fundamental del juego.

---

## 🔁 Ciclo de juego extendido

A partir de la incorporación de reglas, el ciclo del juego puede representarse como:

```text id="4kjc9z"
input → update → collision → rules → render
```

Donde:

* **collision**: detecta interacciones espaciales
* **rules**: define las consecuencias de esas interacciones

Esto extiende el Game Loop tradicional incorporando lógica de juego explícita.

---

## 🧮 Sistema de puntuación

El puntaje es un mecanismo que permite:

* cuantificar el desempeño del jugador
* establecer progresión
* definir condiciones de victoria

En Pong, el sistema es acumulativo:

* cada salida lateral otorga un punto
* el puntaje se mantiene entre iteraciones del ciclo

---

## 🔁 Reinicio controlado

Después de cada punto, el sistema realiza un reinicio parcial:

* la pelota vuelve al centro
* se restablece su dirección
* el estado general del juego se conserva

Este tipo de reinicio mantiene la continuidad de la partida sin perder progreso.

---

## 🧠 Separación de responsabilidades

El sistema de reglas se implementa en el estado del juego (`JugandoState`), mientras que:

* la detección de colisiones se mantiene en `Collision`
* las entidades conservan su comportamiento propio

Esto permite distinguir entre:

* lógica del mundo (movimiento, colisión)
* lógica del juego (reglas, puntaje)

---

## 🎓 Interpretación desde diseño de juegos

Desde una perspectiva de diseño, las reglas pertenecen al nivel de **mecánicas** dentro del modelo MDA:

* **Mecánicas**: reglas y sistemas formales
* **Dinámicas**: comportamiento emergente del jugador
* **Estética**: experiencia percibida

En Pong:

* las reglas determinan las mecánicas
* el rebote y control generan dinámicas
* la competencia produce la experiencia

---

## 📌 Conclusión

Las reglas son el elemento que da sentido al sistema interactivo.

Comprender su rol permite:

* diseñar juegos más claros
* estructurar correctamente la lógica del sistema
* separar simulación de intención lúdica

Una implementación ordenada de las reglas facilita la evolución del juego hacia sistemas más complejos.

---
⬅️ [Volver al README](../../README.md)
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)