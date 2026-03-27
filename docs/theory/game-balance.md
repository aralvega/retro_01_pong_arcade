# 🧠 Balance en videojuegos

## 📌 Introducción

El balance en videojuegos consiste en ajustar los parámetros del sistema para lograr una experiencia de juego adecuada.

No se trata únicamente de dificultad, sino de la relación entre:

* desafío
* control
* respuesta del sistema

Un juego balanceado es aquel que resulta:

* comprensible
* justo
* progresivamente desafiante

---

## 🎮 Variables del sistema

En juegos como Pong, el comportamiento emerge de la interacción entre variables simples:

* velocidad de la pelota
* velocidad de los jugadores
* precisión del oponente
* límites del sistema

El balance consiste en ajustar estas variables de forma coherente.

---

## ⚖️ Relación entre velocidad y tiempo de reacción

Uno de los factores más importantes es la relación entre:

```text id="k8d3f1"
tiempo de reacción = distancia / velocidad
```

Si la pelota es demasiado rápida en relación con la velocidad del oponente:

* el juego se vuelve injusto

Si es demasiado lenta:

* el juego se vuelve trivial

---

## 🤖 Imperfección como diseño

Un error común es intentar que la inteligencia artificial sea perfecta.

Sin embargo, en muchos casos es preferible introducir:

* errores controlados
* limitaciones de velocidad
* retrasos en la reacción

Esto genera una experiencia más equilibrada.

---

## 🧠 Estabilidad del comportamiento

Un sistema balanceado debe evitar comportamientos erráticos.

Por ejemplo:

* cambios constantes de dirección
* movimientos oscilantes
* respuestas excesivamente rápidas

Para ello se introducen mecanismos como:

* zonas de tolerancia
* actualización discreta de objetivos
* límites de velocidad

---

## 📈 Progresión de dificultad

Un juego suele incrementar su dificultad a lo largo del tiempo.

Esto puede lograrse mediante:

* aumento de velocidad
* reducción de tolerancias
* mayor precisión del sistema

En este proyecto, la dificultad aumenta mediante:

```text id="q2m7p9"
incremento progresivo de la velocidad de la pelota
```

---

## 🎯 Balance dinámico vs estático

### Balance estático

Los parámetros permanecen constantes.

### Balance dinámico

Los parámetros cambian durante el juego.

El proyecto implementa un balance dinámico simple basado en la velocidad de la pelota.

---

## 🎓 Relación con experiencia del jugador

El balance impacta directamente en:

* sensación de control
* percepción de justicia
* motivación

Un buen balance genera:

* aprendizaje progresivo
* desafío alcanzable
* repetición voluntaria

---

## 📌 Conclusión

El balance es uno de los aspectos más importantes del diseño de videojuegos.

No depende de sistemas complejos, sino de decisiones cuidadosas sobre parámetros simples.

Comprender estas relaciones permite construir juegos más atractivos y efectivos.

---
⬅️ [Volver al README](../../README.md)
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)