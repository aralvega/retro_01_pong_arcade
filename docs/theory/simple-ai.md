# 🧠 Inteligencia artificial simple en videojuegos 2D

## 📌 Introducción

En el desarrollo de videojuegos, la inteligencia artificial (IA) no siempre implica sistemas complejos o aprendizaje automático.

En muchos casos, comportamientos simples bien diseñados pueden generar experiencias de juego satisfactorias.

En este contexto, se habla de **IA basada en reglas o heurísticas**, ampliamente utilizada en juegos clásicos.

---

## 🎮 IA en juegos clásicos

En los primeros videojuegos, las limitaciones técnicas impedían implementar sistemas complejos.

Por ello, se utilizaban estrategias simples como:

* seguimiento de posición
* reglas deterministas
* respuestas predefinidas

Estas técnicas continúan siendo relevantes en la actualidad, especialmente en juegos casuales o educativos.

---

## 🤖 IA reactiva

La implementación utilizada en este proyecto corresponde a una **IA reactiva**.

Características:

* responde al estado actual del sistema
* no almacena memoria
* no predice el futuro
* no aprende del comportamiento del jugador

En lugar de planificar, simplemente reacciona.

---

## 🎯 Estrategia de seguimiento

La paleta controlada por la CPU sigue una lógica básica:

* observa la posición vertical de la pelota
* compara con su propio centro
* se mueve hacia arriba o hacia abajo

Esto se puede interpretar como un sistema de control simple:

```text id="g8d1u4"
error = posición_pelota - centro_paleta
```

---

## ⚙️ Implementación conceptual

La lógica puede resumirse como:

```text id="y2l8f6"
si error < 0 → mover hacia arriba  
si error > 0 → mover hacia abajo  
```

Este tipo de comportamiento es suficiente para generar un oponente funcional.

---

## 🧠 Zona de tolerancia (Dead Zone)

Para evitar movimientos constantes cuando la pelota está casi alineada, se introduce una zona de tolerancia:

```text id="n7z3q1"
|error| < tolerancia → no moverse
```

Esto permite:

* reducir oscilaciones
* mejorar la estabilidad visual
* generar un movimiento más natural

---

## ⚖️ Balance de dificultad

La dificultad del oponente no depende de inteligencia compleja, sino de parámetros simples:

* velocidad de la paleta
* tamaño de la zona de tolerancia
* velocidad de la pelota

En este proyecto, se ajusta la velocidad de la CPU a un valor inferior al del jugador:

```text id="c3x9v2"
speed_CPU = 150
```

Esto introduce una limitación que permite al jugador ganar.

---

## 🧠 Limitaciones del enfoque

La IA implementada presenta varias limitaciones:

* no predice la trayectoria de la pelota
* no considera rebotes futuros
* no adapta su comportamiento
* puede ser explotada por el jugador

Sin embargo, estas limitaciones son intencionales y forman parte del diseño del juego.

---

## 🚀 Posibles mejoras

Algunas extensiones posibles incluyen:

### 🔹 Predicción de trayectoria

Estimar el punto donde la pelota impactará en la paleta.

---

### 🔹 Error controlado

Agregar variabilidad al movimiento:

```text id="w6m8k3"
posición_objetivo = posición_pelota + ruido
```

---

### 🔹 Activación condicional

Moverse solo cuando la pelota se dirige hacia la CPU.

---

### 🔹 Dificultad dinámica

Ajustar la velocidad según el puntaje o tiempo de juego.

---

## 🎓 Interpretación desde MDA

Desde el modelo MDA:

* **Mecánicas**: reglas de movimiento de la CPU
* **Dinámicas**: interacción jugador–oponente
* **Estética**: sensación de desafío

Una IA simple puede generar dinámicas complejas sin necesidad de algoritmos sofisticados.

---

## 📌 Conclusión

La inteligencia artificial en videojuegos no requiere necesariamente complejidad para ser efectiva.

Una heurística bien diseñada puede:

* generar comportamiento creíble
* ofrecer un desafío adecuado
* mantener la jugabilidad fluida

Comprender estos principios permite diseñar sistemas eficientes y adecuados al contexto del juego.

---
⬅️ [Volver al README](../../README.md)
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)