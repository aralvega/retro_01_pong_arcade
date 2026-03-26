class Hud {

  public void render(int leftScore, int rightScore) {
    fill(255);
    textAlign(CENTER, TOP);
    textSize(32);
    text(leftScore + "   :   " + rightScore, Config.SCREEN_WIDTH / 2.0f, 20);
  }

}
