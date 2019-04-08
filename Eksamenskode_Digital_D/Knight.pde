class Knight extends Men {



  Knight(float incX, float incY, float vX, float vY) {
    super(incX, incY, vX, vY);
    hp = 15;
  }

  void show() {
    //rect(x, y, 20, 20);
  }
  void act() {
    image(ShieldSH, x, y, 20, 20);
  }
}
