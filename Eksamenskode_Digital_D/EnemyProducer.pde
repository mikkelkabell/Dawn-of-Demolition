class EnemyProducer extends GameObject {
 
 EnemyProducer () {
 x = random(140, 590);
 y = 1000;
 dx = random(-4, 4);
 dy = 1;
 }
 
 void show () {
 fill(200);
 ellipse (x, y, 20, 20);
 }
 
 void act() {
 if (frameCount < 100) {
 //gør ingenting
 } else if (frameCount < 600) {
 straightLine (100);
 } else if (frameCount < 1050) {
 straightLine (500);
 } else if (frameCount < 1600) {
 randomWave();
 }
 }
 
 
 void straightLine(float incX) {
 x = incX;
 if (frameCount % 200 == 0) { 
 myEnemy = new Enemy(random(140, 590), 850);
 engine.add(myEnemy);
 }
 }
 void randomWave() {
 x = random(140, 590);
 if (frameCount %200 == 0) {
 myEnemy = new Enemy(random(140, 590), 850);
 engine.add(myEnemy);
 }
 }
 }
 
