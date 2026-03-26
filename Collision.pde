static class Collision {

  /**
   * Verifica colisión entre un círculo (pelota) y un rectángulo (box collider).
   *
   * Estrategia:
   * 1. Encontrar el punto del rectángulo más cercano al centro del círculo
   * 2. Calcular la distancia entre ese punto y el centro del círculo
   * 3. Si la distancia es menor o igual al radio → hay colisión
   */
  static boolean circleVsBox(PVector center, float radius, BoxCollider box) {

    // Paso 1: encontrar el punto más cercano del rectángulo al centro del círculo
    // constrain(valor, min, max) limita el valor dentro del rango [min, max]
    // Esto proyecta el centro del círculo dentro del rectángulo

    float closestX = constrain(center.x, box.getLeft(), box.getRight());
    float closestY = constrain(center.y, box.getTop(), box.getBottom());

    // Paso 2: calcular la distancia entre el centro del círculo y ese punto
    float dx = center.x - closestX;
    float dy = center.y - closestY;

    // Paso 3: comparar distancia con el radio
    // Usamos distancia al cuadrado para evitar sqrt (más eficiente)
    float distanceSquared = dx * dx + dy * dy;
    float radiusSquared = radius * radius;

    return distanceSquared <= radiusSquared;
  }

}
