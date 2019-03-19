class Bueskytte extends Men{
  
  Bueskytte(float incX, float incY, float incVX, float incVY){
    super(incX, incY, incVX, incVY);
    
  }
  
  void show() {
   fill(200,150,100);
   rect(x,y,20,20);
    

  }
  /* float th, cd; // Threshold, Cooldown
  

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
