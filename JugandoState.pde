class JugandoState implements GameState{
  private Game game;
  private PaletaJugador jugador;
  private Pelota pelota;
  private Hud hud;
  private int rightScore;
  
  public JugandoState(Game game){
    this.game = game;
    
    this.jugador = new PaletaJugador(new PVector(40,Config.SCREEN_HEIGHT/2-50),
                                     20, 100, 320);
    this.pelota = new Pelota(new PVector(Config.SCREEN_WIDTH/2,Config.SCREEN_HEIGHT/2),
                             12,new PVector(-220,320));
    this.hud = new Hud();
    this.rightScore = 0;
  }
  
  public void update(){
    this.jugador.update();
    this.pelota.update();
    this.pelota.checkCollision(this.jugador);
    
    if(this.pelota.isOutLeft()){
      this.rightScore++;
      this.pelota.resetToCenter(true);
    }
    
    if(this.pelota.isOutRight()){
      this.jugador.addPoint();
      this.pelota.resetToCenter(false);
    }
  }
  
  public void render(){
    background(0);
    drawCenterLine();
    this.jugador.render();
    this.pelota.render();
    this.hud.render(this.jugador.getScore(),this.rightScore);
  }
  
  private void drawCenterLine() {
    stroke(255);

    for (int y = 0; y < Config.SCREEN_HEIGHT; y += 30) {
      line(Config.SCREEN_WIDTH / 2.0f, y, Config.SCREEN_WIDTH / 2.0f, y + 15);
    }

    noStroke();
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
