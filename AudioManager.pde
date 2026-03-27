import processing.core.PApplet;
import processing.sound.*;

class AudioManager {

  private SoundFile paddleSound;
  private SoundFile wallSound;
  private SoundFile scoreSound;

  public AudioManager(PApplet app) {
    this.paddleSound = new SoundFile(app, "assets/sounds/boundpalette.wav");
    this.wallSound = new SoundFile(app, "assets/sounds/boundwall.wav");
    this.scoreSound = new SoundFile(app, "assets/sounds/ballout.wav");
  }

  public void playPaddle() {
    paddleSound.play();
  }

  public void playWall() {
    wallSound.play();
  }

  public void playScore() {
    scoreSound.play();
  }
}
