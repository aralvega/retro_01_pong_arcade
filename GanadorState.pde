class GanadorState implements GameState {
  private Game game;
  private String winnerMessage;

  public GanadorState(Game game, String winnerMessage) {
    this.game = game;
    this.winnerMessage = winnerMessage;
  }

  public void update() {
    // Sin lógica de actualización por ahora.
  }

  public void render() {
    background(0);

    fill(255);
    textAlign(CENTER, CENTER);

    textSize(42);
    text("Game Over", width / 2.0f, height / 2.0f - 70);

    textSize(28);
    text(this.winnerMessage, width / 2.0f, height / 2.0f);

    textSize(18);
    text("Press R to restart", width / 2.0f, height / 2.0f + 60);
    text("Press ESC to exit", width / 2.0f, height / 2.0f + 80);
  }

  public void keyPressed(char keyValue, int keyCodeValue) {
    if (keyValue == 'r' || keyValue == 'R') {
      this.game.setState(new JugandoState(this.game));
    }
  }

  public void keyReleased(char keyValue, int keyCodeValue) {
    // No action needed.
  }
}
