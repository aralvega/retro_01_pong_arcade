private Game game;

void settings(){
  size(Config.SCREEN_WIDTH, Config.SCREEN_HEIGHT);
}

void setup(){
  frameRate(Config.TARGET_FPS);
  Time.reset(millis());
  game = new Game(this);
}

void draw(){
  Time.update(millis());
  game.update();
  game.render();
}

void keyPressed(){
  game.keyPressed(key,keyCode);
}

void keyReleased(){
  game.keyReleased(key,keyCode);
}
