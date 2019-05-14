class Archer extends Men { //<>// //<>//

  float angle;
  float dX, dY;
  float x;
  float y;
  float vX;
  float vY;  
  float incX, incY;
  float fdX, fdY;


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
    if (incX - 5 < x && incX +5 > x && incY - 5 < y && incY + 5 > y) 
    {
      fdY = 0;
      fdX = 0;
    }

    println("Afstand:" + dist(eX, eY, x, y));
    println(x, y);

    // int l = engine.size();
    for (int i = 0; i < engine.size(); i++) {
      GameObject num = engine.get(i);
      if (num instanceof Enemy) {
        float ToEnemy = dist(num.x, num.y, x, y);
        if (ToEnemy < closest) {
          closest = ToEnemy;
          eX = num.x;
          eY = num.y;
        }
      }
    }

    if (closest < 150) {
      if (frameCount % 50 == 0) {
        angle = atan2(eX-this.x, eY-this.y);
        vX = cos(angle) * 2;
        vY = sin(angle) * 2;
        engine.add(new Bullet(x, y, vX, vY));
      }
    }
  }
}
boolean hasDied () {
  return y > height || x > width || y < -20 || x < -20;
}
