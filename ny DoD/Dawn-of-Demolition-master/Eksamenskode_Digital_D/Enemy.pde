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
 /*   int i = 0;
    while (i < engine.size()) { FUCK COLLISION //<>//
      GameObject obj = engine.get(i); //<>//
      if (obj instanceof Bullet) { //<>//
        if (rectRect(x, y, 40, 40, obj.x, obj.y, 6, 6)) { //<>//
          hp = hp - 1; //<>//
          obj.hp = 0; //<>//
          i++; //<>//
        }
      }
    }
*/
  }
  boolean hasDied () {
    return y > height || x > width || y < -20 || x < -20 || hp <= 0;
  }
}
