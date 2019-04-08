class Archer extends Men {


 // float th, cd; // Threshold, Cooldown

  Archer(float incX, float incY, float vX, float vY) {
    super(incX, incY, vX, vY);
    hp = 7;
  }

  void show() {
    rect(x,y,20,20);
  }
 void act() {
    image(BowS, x, y, 20, 20);

   
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
}
