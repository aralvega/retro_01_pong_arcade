class PaletaCPU extends Paleta {
  private float trackingError;
  private float errorTimer;
  private float errorInterval;

  public PaletaCPU(PVector position, float widthP, float heightP, float speed) {
    super(position, widthP, heightP, speed);
    this.trackingError = 0;
    this.errorTimer = 0;
    this.errorInterval = 0.45f; // cada cuánto cambia el error
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
    
    PVector ballVelocity = pelota.getVelocity();
    // Centro vertical de la paleta
    float paddleCenterY = this.position.y + this.heightP / 2.0f;
    
    float targetY=0f;    
    // Zona de tolerancia para evitar oscilaciones (dead zone)
    float tolerance = 8;
    
    // Mantener el mismo error durante un pequeño intervalo
    this.errorTimer += Time.deltaTime;
    
    if (this.errorTimer >= this.errorInterval) {
      this.trackingError = random(-6, 6);
      this.errorTimer = 0;
    }
    
    if (ballVelocity.x > 0) {
      // La pelota viene hacia la CPU: seguirla con precisión moderada
      targetY = ballPosition.y + this.trackingError;
      tolerance = 8;
    } else {
      // La pelota se aleja: volver suavemente al centro
      targetY = Config.SCREEN_HEIGHT / 2.0f;
      tolerance = 20;
    }
    
    // Si la pelota está por encima de esa posicion imperfecta → subir
    if (targetY < paddleCenterY - tolerance) {
      this.position.y -= this.speed * Time.deltaTime;
    }// Si está por debajo de esa posición imperfecta → bajar 
     else if (targetY > paddleCenterY + tolerance) {
      this.position.y += this.speed * Time.deltaTime;
    }
   
    // Mantener dentro de los límites de la pantalla
    keepInsideScreen();
  }
}
