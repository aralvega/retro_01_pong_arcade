interface GameState{
  void update();
  void render();
  void keyPressed(char keyValue, int keyCodeValue);
  void keyReleased(char keyValue, int keyCodeValue);
}
