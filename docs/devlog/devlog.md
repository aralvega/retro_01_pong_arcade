# 📓 Bitácora de desarrollo

## 📌 Introducción

Esta bitácora documenta el proceso de desarrollo del proyecto **Retro Pong Arcade**, organizado en iteraciones progresivas.

Su objetivo es:

- registrar decisiones de diseño  
- evidenciar la evolución del sistema  
- vincular implementación y aprendizaje  

---

## 🧱 Iteración 1 — Configuración inicial

Se estableció la base del proyecto:

- creación del sketch en Processing  
- configuración de resolución y FPS  
- inicialización del repositorio Git  
- definición de estructura inicial  

Se introduce el concepto de **Game Loop** como base del sistema.

---

## 🔁 Iteración 2 — Game Loop y arquitectura base

Se implementa la estructura central del juego:

- clase `Game` como coordinador  
- interfaz `GameState`  
- estados iniciales  
- clase `Time` para delta time  

Se establece el flujo:

input → update → render

Esto permite separar responsabilidades desde el inicio del proyecto.

---

## 🎮 Iteración 3 — Entidades y movimiento

Se introducen las entidades principales:

- `Pelota`  
- `Paleta`  
- `PaletaJugador`  

Se implementa:

- movimiento basado en delta time  
- control por teclado  
- restricciones de pantalla  

Esto constituye la primera versión jugable del sistema.

---

## 🧩 Iteración 4 — Sistema de colisiones

Se desacopla la lógica de colisiones mediante:

- `BoxCollider`  
- `Collision`  

Se implementa:

- detección círculo vs rectángulo  
- rebote de la pelota  
- cálculo de ángulo de salida en función del punto de impacto  

Esto permite una arquitectura más modular y reutilizable.

---

## 🕹️ Iteración 5 — Reglas de juego

Se agregan las reglas básicas de Pong:

- detección de salida lateral  
- sistema de puntaje  
- reinicio de la pelota  
- condición de victoria  

Se introduce el estado `GanadorState` para representar el fin de la partida.

---

## 🤖 Iteración 6 — Inteligencia artificial

Se implementa una CPU básica para la paleta rival:

- seguimiento de la pelota  
- zona de tolerancia  
- introducción de error controlado  

Se ajusta el comportamiento para que:

- sea competitivo  
- no sea perfecto  
- permita al jugador ganar  

Se introduce el concepto de **IA reactiva basada en heurísticas**.

---

## ⚖️ Iteración 7 — Balance del juego

Se ajustan los parámetros del sistema:

- velocidad inicial de la pelota  
- velocidad de la CPU  
- error de seguimiento  
- intervalo de actualización del error  

Se implementa:

- incremento progresivo de la velocidad de la pelota  
- límites máximos de velocidad  
- comportamiento contextual de la CPU (seguimiento vs reposicionamiento)  

El objetivo es lograr una experiencia equilibrada entre desafío y control.

---

## 🔊 Iteración 8 — Audio

Se incorpora feedback sonoro al juego:

- colisión con paleta  
- rebote en paredes  
- obtención de puntos  

Se implementa:

- librería `processing.sound`  
- clase `AudioManager`  
- acceso centralizado desde `Game`  

Se mantiene el desacoplamiento:

- entidades → detectan eventos  
- estado → interpreta eventos  
- audio → reproduce sonidos  

---

## 🎨 Iteración 9 — Presentación visual

Se mejora la presentación del proyecto:

- capturas de pantalla  
- generación de GIF de gameplay  
- integración visual en README  

Se optimiza la comunicación del proyecto para su uso en portfolio.

---

## 📊 Iteración 10 — Modelado y documentación

Se formaliza el diseño del sistema mediante:

- diagrama de clases  
- diagrama de estados  
- historias de usuario  
- documentación teórica  

Esto permite:

- mejorar la comprensión del sistema  
- facilitar su uso didáctico  
- documentar decisiones de diseño  

---

## 🧠 Conclusión

El desarrollo del proyecto siguió un enfoque incremental, donde cada iteración agregó una capa de complejidad.

Se pasó de:

- una estructura base  
a  
- un videojuego completo con arquitectura, IA, balance, audio y documentación  

Este proceso evidencia la importancia de:

- construir progresivamente  
- separar responsabilidades  
- validar cada etapa del desarrollo  

---
⬅️ [Volver al README](../../README.md)  
🏠 [Repositorio principal](https://github.com/aralvega/retro-01-pong-arcade)
