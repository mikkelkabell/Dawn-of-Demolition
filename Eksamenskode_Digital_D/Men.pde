class Men extends GameObject {

  float x;
  float y;
  float vX;
  float vY;
  
  Men(float incX, float incY, float incVX, float incVY) { //constructor
    x = incX;
    y = incY;
    vX = incVX;
    vY = incVY;
  }
  
  void show() {
    fill(4,148,247);
    rect(x, y, 20, 20);
  }
  
  void act() {
    x = x + vX;
    y = y + vY;
  }
}
