# 🧠 Sistema de colisiones en videojuegos 2D

## 📌 Introducción

En el desarrollo de videojuegos, el sistema de colisiones permite detectar cuándo dos objetos interactúan en el espacio.

Estas interacciones pueden representar:

* impactos físicos
* eventos del juego
* activación de mecánicas

En juegos 2D, las colisiones suelen resolverse mediante aproximaciones geométricas simples que permiten un buen equilibrio entre precisión y rendimiento.

---

## 🧩 Detección vs. respuesta

Es importante distinguir dos conceptos fundamentales:

### 🔍 Detección de colisión

Responde a la pregunta:

> ¿dos objetos se intersectan?

Se basa en cálculos geométricos.

---

### 🔁 Respuesta a la colisión

Responde a la pregunta:

> ¿qué ocurre cuando se detecta una colisión?

Depende de la lógica del juego:

* rebote
* daño
* puntuación
* desaparición de objetos

Separar ambos conceptos permite diseñar sistemas más claros y reutilizables.

---

## 📐 Representación geométrica

Para simplificar los cálculos, los objetos del juego se representan mediante formas básicas:

* círculo (pelota)
* rectángulo (paleta)

Estas representaciones no necesariamente coinciden con la forma visual del objeto, pero facilitan la detección de colisiones.

---

## 📦 BoxCollider

El `BoxCollider` representa un rectángulo alineado a los ejes (*axis-aligned bounding box*).

Proporciona información geométrica como:

* límites horizontales (left, right)
* límites verticales (top, bottom)
* centro del rectángulo

Esta abstracción permite desacoplar la geometría de la entidad del juego.

---

## 🔵 Colisión círculo–rectángulo

El problema consiste en determinar si un círculo y un rectángulo se intersectan.

### Estrategia utilizada

1. encontrar el punto del rectángulo más cercano al centro del círculo
2. calcular la distancia entre ese punto y el centro
3. comparar la distancia con el radio

---

## 📍 Punto más cercano

El punto más cercano se obtiene limitando las coordenadas del centro del círculo al rango del rectángulo:

```java id="m7d5o3"
float closestX = constrain(center.x, left, right);
float closestY = constrain(center.y, top, bottom);
```

Esto equivale a proyectar el centro del círculo dentro del área del rectángulo.

---

## 📏 Cálculo de distancia

Se calcula el vector entre el centro del círculo y el punto más cercano:

```java id="x1xj0h"
float dx = center.x - closestX;
float dy = center.y - closestY;
```

Luego se obtiene la distancia al cuadrado:

```java id="2h9x1p"
float distanceSquared = dx * dx + dy * dy;
```

---

## ⚙️ Comparación eficiente

En lugar de calcular la distancia real (que implicaría una raíz cuadrada), se compara directamente con el radio al cuadrado:

```java id="vlz5q2"
distanceSquared <= radius * radius
```

Esto mejora el rendimiento sin afectar la precisión.

---

## 🔁 Respuesta en Pong

En el caso del Pong, la respuesta a la colisión incluye:

* reposicionar la pelota fuera de la paleta
* invertir su dirección horizontal
* ajustar su dirección vertical

Esto permite simular un rebote controlado.

---

## 🎯 Rebote con ángulo

El ángulo de salida depende de la posición de impacto:

```java id="2q6v9c"
float offset = (y - centerY) / (height / 2)
```

Este valor se utiliza para generar un ángulo:

```java id="gx4x9h"
float angle = offset * radians(60)
```

Así, el jugador puede influir en la trayectoria de la pelota según dónde impacte.

---

## 🧠 Interpretación conceptual

El sistema de colisiones puede entenderse como la combinación de:

* una representación geométrica simplificada
* un algoritmo de intersección
* una lógica de respuesta

Esta separación permite construir sistemas:

* más claros
* más mantenibles
* más reutilizables

---

## 🎮 Aplicación en este proyecto

En este proyecto:

* `BoxCollider` define la geometría
* `Collision` implementa la detección
* `Pelota` gestiona la respuesta
* `JugandoState` integra el comportamiento

Este diseño facilita la extensión del sistema a futuros juegos.

---

## 📌 Conclusión

El sistema de colisiones constituye un componente esencial en el desarrollo de videojuegos.

Comprender su funcionamiento permite:

* modelar interacciones espaciales
* optimizar cálculos
* diseñar mecánicas más ricas

Una implementación clara desde el inicio permite escalar el proyecto sin introducir complejidad innecesaria.

---
⬅️ [Volver al README](../../README.md)
🏠 [Repositorio principal](https://github.com/aralvega/retro_01_pong_arcade)