class Knight extends Men {

  float angle;
  float dX, dY;
  float x;
  float y;
  float vX;
  float vY;  
  float incX, incY = 0;
  float fdX, fdY;

  Knight(float incX, float incY, float vX, float vY) {
    super(incX, incY, vX, vY);
    hp = 15;
  }

  void show() {
   image(ShieldSH, x, y, 20, 20);
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
      return y > height || x > width || y < -20 || x < -20;
    }
}
