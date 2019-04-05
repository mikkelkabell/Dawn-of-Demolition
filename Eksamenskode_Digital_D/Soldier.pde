class Solider extends Men {
  
 Solider(float incX, float incY, float vX, float vY){
    super(incX, incY, vX, vY);
    hp = 10;
   
  }
  
  void show() {
   fill(200,150,100);
   rect(x,y,20,20);
    

  }
  void act () {
  
  }
}
