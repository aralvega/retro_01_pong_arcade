static class Time{
  static float deltaTime = 0.0f;
  static int lastTime = 0;
  
  static void reset(int timeValue){
    deltaTime = 0.0f;
    lastTime = timeValue;
  }
  
  static void update(int currentTime){
    deltaTime = (currentTime - lastTime)/1000.0f;
    lastTime = currentTime;
  }
}
