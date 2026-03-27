class JugandoState implements GameState{
  private Game game;
  private PaletaJugador jugador;
  private Pelota pelota;
  private Hud hud;
  private PaletaCPU cpu;
  
  public JugandoState(Game game){
    this.game = game;
    
    this.jugador = new PaletaJugador(new PVector(40,Config.SCREEN_HEIGHT/2-50),
                                     20, 100, 320);
    
    this.cpu = new PaletaCPU(new PVector(Config.SCREEN_WIDTH - 60, Config.SCREEN_HEIGHT / 2 - 50),
                              20,100,200);
    
    this.pelota = new Pelota(new PVector(Config.SCREEN_WIDTH/2,Config.SCREEN_HEIGHT/2),
                             12,new PVector(-250,0));
    
    this.hud = new Hud();
    
  }
  
  public void update(){
    this.jugador.update();
    this.cpu.update(this.pelota);
    
    //rebote en pared
    boolean hitWall = this.pelota.update();
    if (hitWall) {
      this.game.getAudio().playWall();
    }
    
    //colisiones con paletas
    boolean hitPlayer = this.pelota.checkCollision(this.jugador);
    boolean hitCPU = this.pelota.checkCollision(this.cpu);
    
    if (hitPlayer || hitCPU) {
      this.game.getAudio().playPaddle();
    }
    
    // puntos
    if(this.pelota.isOutLeft()){
      this.cpu.addPoint();
      this.game.getAudio().playScore();
      this.pelota.resetToCenter(true);
    }
    
    if(this.pelota.isOutRight()){
      this.jugador.addPoint();
      this.game.getAudio().playScore();
      this.pelota.resetToCenter(false);
    }
    
    checkWinCondition();
  }
  
  public void render(){
    background(0);
    drawCenterLine();
    this.jugador.render();
    this.cpu.render();
    this.pelota.render();
    this.hud.render(this.jugador.getScore(),this.cpu.getScore());
  }
  
  private void drawCenterLine() {
    stroke(255);
    strokeWeight(4);

    for (int y = 0; y < Config.SCREEN_HEIGHT; y += 30) {
      line(Config.SCREEN_WIDTH / 2.0f, y, Config.SCREEN_WIDTH / 2.0f, y + 15);
    }

    noStroke();
  }
  
  private void checkWinCondition(){
    if (this.jugador.getScore() >= Config.WIN_SCORE) {
      this.game.setState(new GanadorState(this.game, "Player Wins"));
    }

    if (this.cpu.getScore() >= Config.WIN_SCORE) {
      this.game.setState(new GanadorState(this.game, "CPU Wins"));
    }
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
