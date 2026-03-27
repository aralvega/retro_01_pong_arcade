class PaletaCPU extends Paleta {
  private float trackingError;
  private float errorTimer;
  private float errorInterval;

  public PaletaCPU(PVector position, float widthP, float heightP, float speed) {
    super(position, widthP, heightP, speed);
    this.trackingError = 0;
    this.errorTimer = 0;
    this.errorInterval = 0.35f; // cada cuánto cambia el error
  }

  /**
   * IA básica de la paleta CPU.
   *
   * Estrategia:
   * La paleta intenta alinear su centro vertical con la posición de la pelota.
   *
   * Este comportamiento corresponde a una heurística simple de seguimiento:
   * - si la pelota está por encima → la paleta sube
   * - si está por debajo → la paleta baja
   *
   * Se introduce una zona de tolerancia (dead zone) para evitar movimientos
   * constantes cuando la pelota está casi alineada.
   *
   * Esta forma de control es determinista y no predice trayectoria futura,
   * lo que la hace simple pero suficiente para este nivel del juego.
   */
  public void update(Pelota pelota) {
    // Posición actual de la pelota
    PVector ballPosition = pelota.getPosition();
    // Centro vertical de la paleta
    float paddleCenterY = this.position.y + this.heightP / 2.0f;
    
    PVector ballVelocity = pelota.getVelocity();
    
    // Zona de tolerancia para evitar oscilaciones (dead zone)
    float tolerance = 5;
    if (ballVelocity.x < 0) {
      tolerance = 25;
    }
    
    

    // Mantener el mismo error durante un pequeño intervalo
    this.errorTimer += Time.deltaTime;
    
    if (this.errorTimer >= this.errorInterval) {
      this.trackingError = random(-10, 10);
      this.errorTimer = 0;
    }
    
    float targetY = ballPosition.y + this.trackingError;
    
    // Si la pelota está por encima de esa posicion imperfecta → subir
    if (targetY < paddleCenterY - tolerance) {
      this.position.y -= this.speed * Time.deltaTime;
    }
    // Si está por debajo de esa posición imperfecta → bajar
    else if (targetY > paddleCenterY + tolerance) {
      this.position.y += this.speed * Time.deltaTime;
    }

    // Mantener dentro de los límites de la pantalla
    keepInsideScreen();
  }
}
