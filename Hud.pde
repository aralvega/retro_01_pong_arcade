class Hud {

  public void render(int leftScore, int rightScore) {
    fill(255);
    textAlign(CENTER, TOP);
    textSize(40);
    text(leftScore + "   :   " + rightScore, Config.SCREEN_WIDTH / 2.0f, 20);
    textSize(20);
    text("First to " + Config.WIN_SCORE + " wins", width/2, 60);
  }

}
