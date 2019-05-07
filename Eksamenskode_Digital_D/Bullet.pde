class Bullet extends GameObject {

  Archer myArcher;
  
  Bullet(Archer archer) {
    myArcher = archer;
    x = myArcher.x;
    y = myArcher.y;
    dx = 0;
    dy = -9;
    hp = 1;
  }
  void show () {
    fill (223, 139, 10);
    rect (x, y, 6, 6);
  }
  void act () {
    x = x+dx;
    y = y+dy;
  }

  boolean hasDied () {
    return y > height || x > width || y < -20 || x < -20;
  }
  
  /*
   void shoot() {
   if (cd == th) {
   engine.add(new Bullet());
   cd = 0;
   }
   }
   
   void recharge() {
   if (cd < th) {
   cd++;
   }
   }
   }
   */
}
