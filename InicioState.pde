class InicioState implements GameState{
  private Game game;
  
  public InicioState(Game game){
    this.game = game;
  }
  
  public void update(){
  }
  
  public void render(){
    background(0);
    fill(255);
    textAlign(CENTER,CENTER);
    
    textSize(42);
    text(Config.GAME_TITLE,width/2,height/2-60);
    
    textSize(20);
    text("Press SPACE to Start",width/2, height/2+10);
    
    textSize(16);
    text("Use ↑ ↓ to move", width/2, height/2 + 80);
    
    textSize(14);
    text("Portfolio project - retro port series", width / 2, height / 2 + 50);
  }
  
  public void keyPressed(char keyValue, int keyCodeValue){
    if(keyValue== ' '){
      this.game.setState(new JugandoState(this.game));
    }
  }
  
  public void keyReleased(char keyValue, int keyCodeValue){
  }
  
}
