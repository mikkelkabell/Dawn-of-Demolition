class Solider extends Men {

  PImage SwordSW; 

  Solider(float incX, float incY, float vX, float vY) {
    super(incX, incY, vX, vY);
    SwordSW = loadImage("SwordSW.png");
    hp = 10;
  }

  void show() {
    image(SwordSW, x, y, 15, 30);
  }
}
