class Soldier extends Men {

  float angle;
  float dX, dY;
  float x;
  float y;
  float vX;
  float vY;  
  float incX, incY = 0;
  float fdX, fdY;

  Soldier(float incX, float incY, float vX, float vY) {
    super(incX, incY, vX, vY);
    hp = 10;
  }

  void show() {
    image(SwordSW, x, y, 15, 30);
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
  boolean hasDied () {
    return y > height || x > width || y < -20 || x < -20 || hp <= 0;
  }
}
