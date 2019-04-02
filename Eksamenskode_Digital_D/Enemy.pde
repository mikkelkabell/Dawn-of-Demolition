class Enemy extends Men {

  float angle; 
  float enemydX, enemydY;
  float incX, incY = 0;
  Enemy(float x, float y, float vX, float vY) {
    super(x, y, vX, vY);
    hp = 10;
  }

  void show () {
    fill(128, 0, 0);
    rect(x, y, 22, 22);
  }

  void act () {
    x = x + enemydX;
    y = y + enemydY;
    if (mousePressed) {
      incX = mouseX;
      incY = mouseY;
      angle = atan2(incY-y, incX-x);
      enemydX = cos(angle) * 2;
      enemydY = sin(angle) * 2;
    }
    if (incX == x && incY == y) {
      enemydX = 0;
      enemydY = 0;
    }
  }

  boolean hasDied () {
    return y > height || x > width || y < -20 || x < -20 || hp <= 0;
  }
}
