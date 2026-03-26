class Paleta{
  protected PVector position;
  protected float widthP;
  protected float heightP;
  protected float speed;
  protected int score;
  protected BoxCollider collider;
  
  public Paleta(PVector position, float widthP, float heightP, float speed){
    this.position = position;
    this.widthP = widthP;
    this.heightP = heightP;
    this.speed = speed;
    this.score = 0;
    this.collider = new BoxCollider(this.position, this.widthP, this.heightP);
  }
  
  public void render(){
    fill(255);
    rect(this.position.x,this.position.y,this.widthP,this.heightP);
  }
  
  public void keepInsideScreen(){
    if(this.position.y<0){
      this.position.y = 0;
    }
    
    if(this.position.y + this.heightP > Config.SCREEN_HEIGHT){
      this.position.y = Config.SCREEN_HEIGHT - this.heightP;
    }
    
  }
  
  public BoxCollider getCollider(){
    return this.collider;
  }
  
  public int getScore(){
    return this.score;
  }
  
  public void addPoint(){
    this.score++;
  }
  
}
