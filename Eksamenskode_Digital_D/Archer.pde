class Archer extends Men {

  PImage BowS;
 // float th, cd; // Threshold, Cooldown

  Archer(float incX, float incY, float vX, float vY) {
    super(incX, incY, vX, vY);
    BowS = loadImage("BowS.png");
    hp = 7;
  }

  void show() {
    image(BowS, x, y, 20, 20);
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
