class Enemy extends GameObject {

  float closest = 10000;
  float eX, eY;
  float angle;
  float fdX, fdY;


  Enemy(float incX, float incY) {
    hp = 10;
    x = incX;
    y = incY;
    dx = 0;
    dy = -1;
  }
  void show () {
    image(EnemyS, x, y, 40, 40);
  }
  void act () {
    x = x + dx;
    y = y + dy;
 //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  }
  boolean hasDied () {
    return y > height || x > width || y < -20 || x < -20 || hp <= 0;
  }
}
