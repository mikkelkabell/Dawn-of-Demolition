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
    fill(4, 148, 247);
    rect(x, y, 20, 20);
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
      fdX = 0;
      fdY = 0;
    }
  }
}
