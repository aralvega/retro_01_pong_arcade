# 🎮 Retro Pong Arcade (Processing)

**Reimplementación del clásico Pong con arquitectura modular, documentación progresiva y enfoque pedagógico-profesional.**

---

## 🧠 Descripción

Este proyecto consiste en la reconstrucción del clásico Pong utilizando Processing, con el objetivo de desarrollar un videojuego completo aplicando buenas prácticas de diseño de software.

No se trata solo de un clon, sino de una implementación que busca:

* Modelar correctamente un juego 2D
* Aplicar principios de programación orientada a objetos
* Implementar una arquitectura clara y escalable
* Documentar el proceso de desarrollo
* Servir como base para futuros ports retro

---

## 🔗 Navegación rápida

- 📚 [Lab 01 — Core Loop](labs/lab01-core-loop.md)
- 📚 [Lab 02 — Entidades y movimiento](labs/lab02-entities-and-movement.md)
- 📚 [Lab 03 — Colisiones](labs/lab03-collisions.md)
- 📚 [Lab 03 — Reglas de Pong](labs/lab04-core-pong-rules.md)  
- 🧠 [Teoría — Game Loop](docs/theory/game-loop.md)
- 🧠 [Teoría — Sistema de colisiones](docs/theory/collision-system.md)
- 🧠 [Teoría — Reglas de juego](docs/theory/game-rules.md)  
- 🎯 [Visión del proyecto](docs/design/vision.md)  
- 🗺️ [Roadmap](docs/design/roadmap.md)

---

## 🎯 Objetivos

* Implementar el **Game Loop (input → update → render)**
* Utilizar **delta time** para independencia del frame rate
* Modelar el flujo del juego mediante **máquina de estados**
* Diseñar entidades desacopladas (Pelota, Paleta, etc.)
* Construir un proyecto reutilizable y escalable

---

## 🕹️ Características

* Jugador vs CPU
* Sistema de puntaje
* Estados de juego (Inicio, Jugando, Fin)
* Colisiones pelota-paleta y pelota-pared
* Incremento progresivo de dificultad
* HUD con visualización de puntaje

---

## 🧱 Arquitectura

El proyecto se organiza en capas con responsabilidades claramente diferenciadas:

### Núcleo

- `Game` → coordina el estado actual del juego  
- `Time` → gestiona el delta time  
- `Config` → define constantes globales  

---

### Estados

- `InicioState` → pantalla inicial  
- `JugandoState` → lógica principal del juego  
- `GanadorState` *(en desarrollo)*  

---

### Entidades

- `Pelota` → objeto dinámico principal  
- `Paleta` → entidad base  
- `PaletaJugador` → controlada por el jugador  
- `PaletaCPU` *(en desarrollo)*  

---

### Sistema de colisiones

- `BoxCollider` → representación geométrica (rectángulo)  
- `Collision` → lógica de detección de intersecciones  

---

### Interfaz de usuario

- `Hud` → visualización del puntaje  

---

### Organización del flujo

El sistema sigue una arquitectura basada en estados:

```text
Game → GameState → Entidades → Colisiones → Reglas → Render
```
## 🔁 Game Loop
El juego sigue el siguiente flujo:
```text
input → update → render
```

Este enfoque permite separar claramente:

* captura de entrada
* actualización de estado
* renderizado

---
## 📁 Estructura del proyecto

```text
retro-01-pong-arcade/
├── Archivos Processing (.pde)
│   ├── retro_01_pong_arcade.pde   # Sketch principal
│   ├── Game.pde                   # Coordinador del juego
│   ├── GameState.pde              # Interfaz de estados
│   ├── InicioState.pde
│   ├── JugandoState.pde
│   ├── Paleta.pde
│   ├── PaletaJugador.pde
│   ├── Pelota.pde
│   ├── BoxCollider.pde
│   ├── Collision.pde
│   ├── HUD.pde
│   ├── Time.pde
│   └── Config.pde
│
├── docs/
│   ├── design/
│   └── theory/
│
├── labs/
│
├── assets/
│
└── README.md
```
---
## 📚 Enfoque didáctico

El proyecto incluye una serie de laboratorios progresivos:

- [Lab 01 — Core Loop y estructura base](labs/lab01-core-loop.md)
- [Lab 02 — Entidades y movimiento](labs/lab02-entities-and-movement.md)
- [Lab 03 — Colisiones](labs/lab03-collisions.md)
- [Lab 04 — Reglas de Pong](labs/lab04-core-pong-rules.md)
* Lab 04 — Máquina de estados
* Lab 05 — IA del oponente
* Lab 06 — Pulido y optimización

---

## 📖 Documentación

* Teoría → `docs/theory/`
    - [Game Loop](docs/theory/game-loop.md)
    - [Sistema de colisiones](docs/theory/collision-system.md)
    - [Reglas de juego](docs/theory/game-rules.md)
* Diseño → `docs/design/`
    - [Visión del proyecto](docs/design/vision.md)  
    - [Roadmap de desarrollo](docs/design/roadmap.md)
* Diagramas → `docs/diagrams/`
* Bitácora → `docs/devlog/`

---

## 🚀 Roadmap

Consultar: [Roadmap de desarrollo](docs/design/roadmap.md)

---

## ▶️ Ejecución

1. Abrir el proyecto en Processing
2. Ejecutar el sketch principal
3. Interactuar mediante teclado

---

## 📌 Estado del proyecto

🟡 En desarrollo — reconstrucción desde cero con estándares de portfolio.

---

## 👨‍🏫 Contexto académico

Este proyecto está diseñado como recurso para:

* Fundamentos de Programación
* Programación de Videojuegos
* Modelado de sistemas interactivos

---

## 👨‍💻 Autor

**Mg. Ing. Ariel Alejandro Vega**  
Universidad Nacional de Jujuy – Facultad de Ingeniería  

🔗 [LinkedIn](https://www.linkedin.com/in/ariel-alejandro-vega/)

---

## 📄 Licencia

MIT License (pendiente de incorporación)
