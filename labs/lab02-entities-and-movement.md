# 🧪 Lab 02 — Entidades y movimiento en el juego

## 🎯 Objetivo

Modelar las primeras entidades del juego e implementar su movimiento utilizando delta time.

En este laboratorio se introducen:

* objetos del dominio del juego (paleta y pelota)
* uso de vectores (`PVector`)
* movimiento independiente del frame rate
* organización del comportamiento en clases

---

## 🧠 Introducción

Una vez definida la estructura base del juego, el siguiente paso consiste en representar los elementos que lo componen.

En Pong, los elementos principales son:

* la **pelota**
* la **paleta del jugador**

Estos elementos se modelan como **entidades**, es decir, objetos con:

* estado (posición, velocidad, tamaño)
* comportamiento (moverse, renderizarse)

---

## 🧩 Modelado de entidades

### Paleta

La paleta representa el elemento controlado por el jugador.

Responsabilidades:

* almacenar su posición
* moverse verticalmente
* mantenerse dentro de la pantalla
* renderizarse

Se implementa una clase base `Paleta` y una especialización `PaletaJugador`.

---

### Pelota

La pelota representa el elemento dinámico del juego.

Responsabilidades:

* mantener su posición y velocidad
* moverse en el espacio
* rebotar contra los límites superior e inferior
* interactuar posteriormente con otros objetos

---

## 📐 Uso de vectores (`PVector`)

Para representar posición y velocidad se utiliza la clase `PVector`.

Ejemplo:

```java
PVector position;
PVector velocity;
```

Esto permite:

* expresar movimiento de forma más clara
* operar con componentes (x, y)
* extender fácilmente el modelo

---

## ⏱️ Movimiento basado en tiempo

El movimiento no se calcula por frame, sino por tiempo:

```java
position.x += velocity.x * deltaTime;
position.y += velocity.y * deltaTime;
```

Esto garantiza que:

* el movimiento sea consistente
* el comportamiento no dependa del rendimiento
* el juego sea reproducible en distintos sistemas

---

## 🎮 Integración en el estado de juego

Las entidades se integran en `JugandoState`, que coordina:

* actualización (`update`)
* renderizado (`render`)

Ejemplo:

```java
jugador.update();
pelota.update();
```

---

## 🔍 Ejercicio realizado

En este laboratorio se logró:

* definir las clases `Paleta`, `PaletaJugador` y `Pelota`
* implementar movimiento vertical controlado por teclado
* implementar movimiento continuo de la pelota
* aplicar delta time correctamente
* mantener las entidades dentro de los límites del juego

---

## 🧠 Reflexión

Este laboratorio introduce una idea fundamental:

👉 el juego no es un conjunto de instrucciones sueltas, sino un conjunto de **objetos que interactúan en el tiempo**

Las decisiones tomadas aquí impactan directamente en:

* la claridad del código
* la facilidad de agregar nuevas entidades
* la posibilidad de escalar el sistema

---

## 🚀 Próximo paso

En el siguiente laboratorio se abordará:

👉 detección de colisiones
👉 introducción de `BoxCollider`
👉 separación entre geometría y lógica del juego
👉 respuesta ante impacto (rebote)

---
⬅️ [Volver al README](../../README.md)
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)