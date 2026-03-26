class PaletaJugador extends Paleta{
  private boolean movingUp;
  private boolean movingDown;
  
  public PaletaJugador(PVector position, float widthP, float heightP, float speed){
    super(position, widthP,heightP,speed);
    this.movingUp = false;
    this.movingDown = false;
  }
  
  public void update(){
    if(this.movingUp){
      this.position.y-=speed * Time.deltaTime;
    }
    if(this.movingDown){
      this.position.y+=speed * Time.deltaTime;
    }
    
    keepInsideScreen();
  }
  
  public void setMovingUp(boolean movingUp){
    this.movingUp = movingUp;
  }
  
  public void setMovingDown(boolean movingDown){
    this.movingDown = movingDown;
  }
  
}
