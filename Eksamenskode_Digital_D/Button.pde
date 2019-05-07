/*class Button {
  //Variable, billeder og string
  //cool_loc = cooldown location
  PVector loc, cool_loc;
  int xr, yr;
  String image;
  PImage buttonimg;
  //t = tint value
  int t;
  float cooltime;

//Button: location x, location y, billede, størrelse x, størrelse y
  Button(float x_, float y_, String img, int xr_, int yr_,float cooltime_) {
    cooltime = cooltime_;
    loc = new PVector(x_, y_);
    cool_loc = new PVector();
    cool_loc.y = loc.y;
    yr = yr_;
    xr = xr_;
    image = img;
    buttonimg = loadImage(image);
    buttonimg.resize(xr, yr);
    t=255;
  }

//viser selve knappen, altså billedet
  void display() {
    t=255;
    tint(t);
    if ( mouseX > loc.x && mouseX < (loc.x + xr) &&
      mouseY > loc.y && mouseY < (loc.y + yr)) {
      t =200;
      tint(t);
    } 
    image(buttonimg, loc.x, loc.y);
  }

  //Tjekker om musen er indenfor knappen, returner true hvis ja


  boolean clickEdges() {
    if ( mouseX > loc.x && mouseX < (loc.x + xr) &&
      mouseY > loc.y && mouseY < (loc.y + yr)) {
      return true;
    } else return false;
  }
  //laver firkanten der viser om knappen kan aktiveres eller ej. 
  void cooldown(){
    strokeWeight(0);
    fill(0,100);
    cool_loc.y += cooltime;
    rect(loc.x,cool_loc.y,xr,yr);
    
  }
  
}
*/
