# 🧾 Historias de usuario

## 📌 Introducción

Las siguientes historias de usuario sintetizan los objetivos funcionales del proyecto desde la perspectiva del jugador y del sistema.

Su propósito es:

- clarificar necesidades del juego
- vincular diseño y desarrollo
- documentar el proceso de construcción

---

## 🎮 Historias del jugador

### US-01 — Iniciar la partida
**Como** jugador,  
**quiero** iniciar la partida desde una pantalla de inicio,  
**para** comenzar el juego cuando esté preparado.

---

### US-02 — Controlar la paleta
**Como** jugador,  
**quiero** mover mi paleta verticalmente,  
**para** interceptar la pelota durante la partida.

---

### US-03 — Visualizar el puntaje
**Como** jugador,  
**quiero** ver el puntaje en pantalla,  
**para** conocer el progreso de la partida.

---

### US-04 — Competir contra un oponente
**Como** jugador,  
**quiero** enfrentarme a una CPU,  
**para** tener una experiencia de juego completa.

---

### US-05 — Recibir feedback del sistema
**Como** jugador,  
**quiero** recibir señales visuales y sonoras en eventos importantes,  
**para** percibir con claridad lo que ocurre en el juego.

---

### US-06 — Reconocer el fin de la partida
**Como** jugador,  
**quiero** ver una pantalla de resultado al finalizar,  
**para** saber quién ganó.

---

### US-07 — Reiniciar el juego
**Como** jugador,  
**quiero** reiniciar la partida después de un game over,  
**para** volver a jugar sin cerrar la aplicación.

---

## 🤖 Historias del sistema

### US-08 — Gestionar estados del juego
**Como** sistema,  
**quiero** organizar el flujo mediante estados,  
**para** separar el comportamiento de inicio, juego y final.

---

### US-09 — Detectar colisiones
**Como** sistema,  
**quiero** detectar colisiones entre pelota y paletas,  
**para** resolver rebotes correctamente.

---

### US-10 — Aplicar reglas de puntuación
**Como** sistema,  
**quiero** asignar puntos cuando la pelota sale por un lateral,  
**para** mantener las reglas básicas de Pong.

---

### US-11 — Reiniciar la pelota tras un punto
**Como** sistema,  
**quiero** reposicionar la pelota en el centro después de cada punto,  
**para** continuar la partida de forma controlada.

---

### US-12 — Controlar una CPU básica
**Como** sistema,  
**quiero** mover automáticamente la paleta rival,  
**para** ofrecer oposición al jugador.

---

### US-13 — Balancear la dificultad
**Como** sistema,  
**quiero** ajustar velocidades, tolerancias e imperfecciones,  
**para** generar una experiencia de juego equilibrada.

---

### US-14 — Reproducir sonidos de evento
**Como** sistema,  
**quiero** reproducir sonidos en colisiones, rebotes y puntos,  
**para** mejorar el feedback al jugador.

---

## 🧠 Observación

Estas historias no reemplazan la implementación técnica, pero ayudan a interpretar el proyecto desde una lógica de necesidades y objetivos.

También funcionan como base para:

- organizar el desarrollo
- justificar decisiones
- construir una bitácora del proyecto

---
⬅️ [Volver al README](../../README.md)  
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)