class Men extends GameObject {


  float angle;
  float dX, dY;
  float x;
  float y;
  float vX;
  float vY;  
  float incX, incY = 0;
  float fdX, fdY;

  Men(float incX, float incY, float incVX, float incVY) { //constructor
    x = incX;
    y = incY;
    vX = incVX;
    vY = incVY;
  }

  void show() {
  }

  void act() {
    x = x + fdX;
    y = y + fdY;
    if (mousePressed) {
      incX = mouseX;
      incY = mouseY;
      angle = atan2(incY-y, incX-x);
      fdX = cos(angle) * 2;
      fdY = sin(angle) * 2;
    }
    if (incX == x && incY == y) {
      x = 0;
      y = 0;
    }
  }
}
