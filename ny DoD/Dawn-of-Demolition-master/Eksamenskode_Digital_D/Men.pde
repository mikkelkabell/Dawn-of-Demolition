class Men extends GameObject {


  float angle;
  float dX, dY;
  float x;
  float y;
  float vX;
  float vY;  
  float incX, incY = 0;
  float fdX, fdY;
  float closest = 10000;
  float eX, eY;

  Men(float incX, float incY, float incVX, float incVY) { //constructor
    x = incX;
    y = incY;
    vX = incVX;
    vY = incVY;
  }

  void show() {
  }

  void act() {
    
    
    
    
    
    
    
    if(bullets == null)return;
    
    
    
    
    float L = dist(eX, eY, bullets.x, bullets.y);
    
    println("L AFSTAND ER " + L);
    if (L < myEnemy.radius+bullets.radius) {
      myEnemy.hp = 0;
      bullets.hp = 0;
      x= x +1000;  
  
  }
    
    
    
  }
  boolean hasDied () {
    return y > height || x > width || y < -20 || x < -20 || hp <= 0;
  }
}
