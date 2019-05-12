class Archer extends Men { //<>// //<>//

  float angle;
  float dX, dY;
  float x;
  float y;
  float vX;
  float vY;  
  float incX, incY = 0;
  float fdX, fdY;
  float list;
  // float th, cd; // Threshold, Cooldown

  Archer(float incX, float incY, float vX, float vY) {
    super(incX, incY, vX, vY);
    hp = 7;
  }

  void show() {
    image(BowS, x, y, 20, 20);
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
  {


    //  println("Afstand:" + dist(myEnemy.x, myEnemy.y, x, y));

    // int l = engine.size();
    for (int i = 0; i < engine.size(); i++) {
      GameObject num = engine.get(i);
      if (num instanceof Enemy) {
        float ToEnemy = dist(num.x, x, num.y, y);
        if (ToEnemy < closest) {
          closest = ToEnemy;
          eX = num.x;
          eY = num.y;
        }
      }
    }

    if (frameCount % 100 == 0) {
      angle = atan2(eY-y, eX-x);
      fdX = cos(angle) * 2;
      fdY = sin(angle) * 2;
      engine.add(new Bullet(x, y, fdX, fdY));
    }
  }
  boolean hasDied () {
    return y > height || x > width || y < -20 || x < -20;
  }
}
