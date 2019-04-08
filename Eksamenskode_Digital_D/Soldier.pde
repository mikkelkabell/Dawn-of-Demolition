class Solider extends Men {

  Solider(float incX, float incY, float vX, float vY) {
    super(incX, incY, vX, vY);
    hp = 10;
  }

  void show() {
    //rect(x, y, 15, 30);
  }
  void act() {
    image(SwordSW, x, y, 15, 30);
  }
}
