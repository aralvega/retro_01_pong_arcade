# 🧪 Lab 03 — Colisiones en Pong

## 🎯 Objetivo

Implementar y comprender el sistema de colisiones entre la pelota y la paleta, separando la geometría de colisión de la lógica propia de las entidades.

En este laboratorio se introducen:

* detección de colisión entre círculo y rectángulo
* uso de `BoxCollider` como volumen de colisión
* clase `Collision` para desacoplar la verificación geométrica
* respuesta al impacto mediante rebote

---

## 🧠 Introducción

Una vez definidas las entidades y su movimiento, el siguiente paso consiste en detectar cuándo dos objetos interactúan en el espacio.

En Pong, la colisión más importante ocurre entre:

* la **pelota**, modelada como un círculo
* la **paleta**, modelada como un rectángulo

En lugar de verificar la colisión directamente desde la entidad, se decidió incorporar una estructura intermedia: el **BoxCollider**.

Esto permite separar:

* la entidad del juego
* su representación geométrica
* la lógica de detección de colisión

---

## 🧱 BoxCollider

El `BoxCollider` representa una caja alineada a los ejes (*axis-aligned bounding box*).

Su responsabilidad consiste en ofrecer información geométrica del rectángulo:

* borde izquierdo
* borde derecho
* borde superior
* borde inferior
* centro vertical

De este modo, la paleta no expone directamente su estructura interna para resolver colisiones.

---

## ⚙️ Clase `Collision`

La clase `Collision` encapsula la lógica geométrica de intersección.

En este caso se implementa la detección entre:

* un círculo
* un rectángulo

La estrategia utilizada es la siguiente:

1. encontrar el punto del rectángulo más cercano al centro del círculo
2. calcular la distancia entre ese punto y el centro
3. verificar si esa distancia es menor o igual al radio

---

## 📐 Idea geométrica

Si el centro de la pelota está fuera del rectángulo, el algoritmo busca el punto más cercano del rectángulo a ese centro.

Ese punto se obtiene limitando las coordenadas del centro del círculo al rango del rectángulo:

```java id="3d793v"
float closestX = constrain(center.x, box.getLeft(), box.getRight());
float closestY = constrain(center.y, box.getTop(), box.getBottom());
```

Luego se calcula el vector entre ese punto y el centro del círculo:

```java id="hmz6cs"
float dx = center.x - closestX;
float dy = center.y - closestY;
```

Finalmente, se compara la distancia al cuadrado con el radio al cuadrado:

```java id="w0v7ez"
return dx * dx + dy * dy <= radius * radius;
```

Este enfoque evita usar raíz cuadrada y resulta eficiente para juegos en tiempo real.

---

## 🔁 Respuesta a la colisión

Detectar una colisión no es suficiente. También hay que definir qué ocurre después del impacto.

En este proyecto, cuando la pelota colisiona con la paleta:

* se reubica fuera de la paleta para evitar superposición
* se invierte su dirección horizontal
* se ajusta el ángulo de salida según la zona de impacto

Esto genera una interacción más rica que un simple rebote especular.

---

## 🎯 Rebote según zona de impacto

Para calcular el rebote se compara la posición vertical de la pelota con el centro de la paleta:

```java id="cpj4je"
float offset = (position.y - box.getCenterY()) / (box.getHeight() / 2.0f);
```

Interpretación:

* `offset = 0` → impacto cerca del centro
* `offset < 0` → impacto en la mitad superior
* `offset > 0` → impacto en la mitad inferior

Ese valor se transforma en un ángulo de rebote:

```java id="3i1wxr"
float bounceAngle = offset * radians(60);
```

Así, la dirección resultante depende de dónde impacta la pelota, lo que mejora la jugabilidad y el control del jugador.

---

## 🧩 Distribución de responsabilidades

El sistema queda organizado de la siguiente manera:

* `Paleta` → entidad del juego
* `BoxCollider` → representación geométrica
* `Collision` → detección de intersección
* `Pelota` → respuesta física básica al impacto
* `JugandoState` → integración de la interacción dentro del juego

Esta distribución evita mezclar demasiadas responsabilidades en una sola clase.

---

## 🔍 Ejercicio realizado

En este laboratorio se logró:

* incorporar `BoxCollider` como volumen de colisión
* implementar la detección círculo-rectángulo
* desacoplar la geometría de la lógica de entidades
* validar el rebote de la pelota contra la paleta
* enriquecer la respuesta mediante ángulo de salida

---

## 🧠 Reflexión

Este laboratorio muestra una idea muy importante en desarrollo de videojuegos:

👉 **colisionar no es lo mismo que reaccionar**

La detección responde a una pregunta geométrica:

> “¿estos volúmenes se intersectan?”

La respuesta al impacto, en cambio, pertenece a la lógica del juego:

> “¿cómo debe comportarse la pelota al chocar?”

Separar ambas dimensiones mejora:

* la claridad del diseño
* la reusabilidad del código
* la extensibilidad del sistema

---

## 🚀 Próximo paso

En la siguiente etapa se incorporarán:

* salida lateral de la pelota
* reinicio tras punto
* sistema de puntaje
* oponente controlado por CPU

---
⬅️ [Volver al README](../../README.md)
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)