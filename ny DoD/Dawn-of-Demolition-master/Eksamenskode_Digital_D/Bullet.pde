class Bullet extends GameObject {

  Archer myArcher;
  PVector acc, vel, loc, dire;

  Bullet(float incX, float incY, float incDX, float incDY) {
    loc = new PVector(incX, incY);
    vel = new PVector(incDX, incDY);
    hp = 1;
  }
  void show () {
    fill (223, 139, 10);
    rect (loc.x, loc.y, 6, 6);
  }

  void act () {
    vel.setMag(2);
    loc.x += vel.x;
    loc.y += vel.y;
  }

  boolean hasDied () {
    return y > height || x > width || y < -20 || x < -20;
  }
}
