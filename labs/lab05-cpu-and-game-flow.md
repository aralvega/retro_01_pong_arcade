# 🧪 Lab 05 — Oponente CPU y flujo completo del juego

## 🎯 Objetivo

Incorporar un oponente controlado por el sistema y completar el flujo del juego mediante estados.

En este laboratorio se implementan:

* paleta controlada por CPU
* lógica básica de inteligencia artificial
* condición de victoria
* estado de fin de juego (`GanadorState`)
* transición entre estados

---

## 🧠 Introducción

Hasta este punto, el sistema permite:

* movimiento de entidades
* colisiones
* reglas básicas de puntaje

Sin embargo, el juego aún no presenta un oponente real ni una condición de finalización.

En este laboratorio se completa el ciclo del juego incorporando un segundo jugador automático y un flujo de estados completo.

---

## 🤖 PaletaCPU

Se introduce una nueva entidad: la paleta controlada por el sistema.

A diferencia del jugador, su movimiento no depende de entrada del usuario, sino de una lógica interna.

---

## 🎯 Estrategia de la CPU

La CPU utiliza una heurística simple:

* observa la posición vertical de la pelota
* intenta alinear su centro con ella
* se mueve hacia arriba o abajo según corresponda

Este comportamiento corresponde a una **IA reactiva**, ya que responde al estado actual del sistema sin predecir el futuro.

---

## ⚙️ Implementación

```java id="3q5d8l"
public void update(Pelota pelota) {

  PVector ballPosition = pelota.getPosition();
  float paddleCenterY = this.position.y + this.heightP / 2.0f;

  float tolerance = 5;

  if (ballPosition.y < paddleCenterY - tolerance) {
    this.position.y -= this.speed * Time.deltaTime;
  } 
  else if (ballPosition.y > paddleCenterY + tolerance) {
    this.position.y += this.speed * Time.deltaTime;
  }

  keepInsideScreen();
}
```

---

## ⚖️ Balance de dificultad

La velocidad de la CPU se define como:

```text id="u8h3fx"
speed = 150
```

Esto permite que:

* la CPU pueda seguir la pelota
* pero no sea perfecta
* el jugador tenga posibilidad de ganar

El ajuste de esta velocidad constituye una decisión de diseño importante.

---

## 🧠 Zona de tolerancia

Se introduce una zona de tolerancia (*dead zone*):

```java id="k2c8ru"
float tolerance = 5;
```

Esto evita:

* oscilaciones constantes
* movimientos innecesarios
* comportamiento visual errático

---

## 🏁 Condición de victoria

Se define una condición de finalización del juego:

```java id="6t5j9y"
if (score >= WIN_SCORE)
```

Cuando un jugador alcanza el puntaje objetivo, el sistema cambia de estado.

---

## 🔄 Estado `GanadorState`

Este estado representa el final de la partida.

Responsabilidades:

* mostrar el resultado
* permitir reiniciar el juego

Ejemplo:

```java id="2o6g1k"
game.setState(new GanadorState(game, "Player Wins"));
```

---

## 🔁 Flujo completo del juego

El sistema de estados queda definido como:

```text id="0d7f5r"
Inicio → Jugando → Ganador → Jugando
```

Este flujo permite:

* iniciar partida
* jugar
* finalizar
* reiniciar

---

## 🔍 Ejercicio realizado

En este laboratorio se logró:

* implementar una paleta controlada por CPU
* introducir una IA básica reactiva
* ajustar la dificultad mediante velocidad
* incorporar condición de victoria
* agregar un estado de fin de juego
* completar el flujo del sistema

---

## 🧠 Reflexión

Este laboratorio introduce un concepto clave:

👉 **no toda inteligencia artificial necesita ser compleja para ser efectiva**

Una heurística simple puede generar:

* comportamiento creíble
* desafío adecuado
* experiencia de juego satisfactoria

Además, se consolida el uso de estados como mecanismo para estructurar el flujo del juego.

---

## 🚀 Próximo paso

En la siguiente etapa se abordará:

👉 ajuste fino del balance
👉 mejoras visuales
👉 optimización del comportamiento
👉 refinamiento del sistema

---
⬅️ [Volver al README](../../README.md)
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)