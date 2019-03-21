class Enemy extends Men {

  
  Enemy(float x, float y, float vX, float vY) {
    super(x, y, vX, vY);
    hp = 10;

  }

  void show () {
    fill(128, 0, 0);
    rect(x, y, 22, 22);
  }

  void act () {
    x = x + vX;
    y = y - vY;
  }

  boolean hasDied () {
    return y > height || hp <= 0;
  }
}
