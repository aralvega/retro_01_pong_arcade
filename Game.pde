class Game{
  private GameState currentState;
  
  public Game(){
    currentState = new InicioState(this);
  }
  
  public void setState(GameState newState){
    currentState = newState;
  }
  
  public void render(){
    currentState.render();
  }
  
  public void update(){
    currentState.update();
  }
  
  public void keyPressed(char keyValue, int keyCodeValue){
    currentState.keyPressed(keyValue,keyCodeValue);
  }
  
  public void keyReleased(char keyValue, int keyCodeValue){
    currentState.keyReleased(keyValue,keyCodeValue);
  }
  
}
