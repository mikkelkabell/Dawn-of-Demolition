void randomWave() {
x= random(240,width-240);
 if (timer %599 == 0) { 
   engine.add(new Men(x,-50,5,5));
 }
}
