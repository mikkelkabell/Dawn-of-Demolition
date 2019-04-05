class Knight extends Men {


  PImage ShieldSH;

  Knight(float incX, float incY, float vX, float vY) {
    super(incX, incY, vX, vY);
    ShieldSH = loadImage("ShieldSH.png");
    hp = 15;
  }

  void show() {
    image(ShieldSH, x, y, 20, 20);
  }
}
