class Pelota{
  private PVector position;
  private float radius;
  private PVector velocity;
  private float baseSpeed;
  
  public Pelota(PVector position, float radius, PVector velocity){
    this.position = position.copy();
    this.radius = radius;
    this.velocity = velocity.copy();
    this.baseSpeed = velocity.mag();
  }
  
  public void update(){
    this.position.x += this.velocity.x * Time.deltaTime;
    this.position.y += this.velocity.y * Time.deltaTime;
    checkTopBottomBounds();
  }
  
  public void render(){
    fill(255);
    circle(this.position.x,this.position.y, this.radius*2);
  }
  
  private void checkTopBottomBounds(){
    if(this.position.y - this.radius <= 0){
      this.position.y = this.radius;
      this.velocity.y *= -1;
    }
    
    if(this.position.y + this.radius >= Config.SCREEN_HEIGHT){
      this.position.y = Config.SCREEN_HEIGHT - this.radius;
      this.velocity.y *= -1;
    }
  }
  
  public void checkCollision(Paleta paleta) {
    BoxCollider box = paleta.getCollider();

    if (Collision.circleVsBox(this.position, this.radius, box)) {

      // Determina hacia qué lado debe salir la pelota luego del rebote.
      float directionX = (this.velocity.x < 0) ? 1 : -1;

      // Reubica la pelota fuera de la paleta para evitar que quede "pegada".
      if (directionX > 0) {
        this.position.x = box.getRight() + this.radius;
      } else {
        this.position.x = box.getLeft() - this.radius;
      }

      // Calcula qué tan lejos del centro de la paleta ocurrió el impacto.
      // offset = 0   => impacto centrado
      // offset = -1  => impacto cerca del borde superior
      // offset = 1   => impacto cerca del borde inferior
      float offset = (this.position.y - box.getCenterY()) / (box.getHeight() / 2.0f);
      offset = constrain(offset, -1, 1);

      // Convierte el offset en un ángulo de rebote.
      float bounceAngle = offset * radians(60);

      // Conserva la rapidez actual.
      float speed = this.velocity.mag();

      // Reconstruye el vector velocidad según el nuevo ángulo.
      this.velocity.x = cos(bounceAngle) * speed * directionX;
      this.velocity.y = sin(bounceAngle) * speed;
    }
  }
  
  public boolean isOutLeft() {
    return this.position.x + this.radius < 0;
  }

  public boolean isOutRight() {
    return this.position.x - this.radius > Config.SCREEN_WIDTH;
  }

  public void resetToCenter(boolean moveRight) {
    this.position.set(Config.SCREEN_WIDTH / 2.0f, Config.SCREEN_HEIGHT / 2.0f);

    float directionX = moveRight ? 1 : -1;
    this.velocity.set(this.baseSpeed * directionX, random(-180, 180));
  }
  
}
