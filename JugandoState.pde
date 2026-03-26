class JugandoState implements GameState{
  private Game game;
  private PaletaJugador jugador;
  private Pelota pelota;
  
  public JugandoState(Game game){
    this.game = game;
    
    this.jugador = new PaletaJugador(new PVector(40,Config.SCREEN_HEIGHT/2-50),
                                     20, 100, 320);
    this.pelota = new Pelota(new PVector(Config.SCREEN_WIDTH/2,Config.SCREEN_HEIGHT/2),
                             12,new PVector(-220,320));
  }
  
  public void update(){
    this.jugador.update();
    this.pelota.update();
    this.pelota.checkCollision(this.jugador);
  }
  
  public void render(){
    background(0);
    this.jugador.render();
    this.pelota.render();
  }
  
  public void keyPressed(char keyValue, int keyCodeValue){
    if(keyCodeValue == UP){
      this.jugador.setMovingUp(true);
    }
    
    if(keyCodeValue == DOWN){
      this.jugador.setMovingDown(true);
    }
  }
  
  public void keyReleased(char keyValue, int keyCodeValue){
    if(keyCodeValue == UP){
      this.jugador.setMovingUp(false);
    }
    
    if(keyCodeValue == DOWN){
      this.jugador.setMovingDown(false);
    }
  }
}
