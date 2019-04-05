/*class EnemyProducer extends GameObject {
 
 EnemyProducer () {
 x = random(140, 590);
 y = -1000;
 dx = random(-4, 4);
 dy = 1;
 }
 
 void show () {
 fill(100);
 ellipse (x, y, 100, 100);
 }
 
 void act() {
 if (frameCount < 100) {
 //gør ingenting
 } else if (frameCount < 600) {
 straightLine (100);
 } else if (frameCount < 1050) {
 straightLine (400);
 } else if (frameCount < 1600) {
 randomWave();
 }
 }
 
 
 void straightLine(float incX) {
 x = incX;
 if (frameCount % 400 == 0) { 
 myEnemy = new Enemy(random(140, 590), 400, random(-4, 4), 1);
 engine.add(myEnemy);
 }
 }
 void randomWave() {
 x = random(140, 590);
 if (frameCount %250 == 0) {
 myEnemy = new Enemy(random(140, 590), 400, random(-4, 4), 1);
 engine.add(myEnemy);
 }
 }
 }
 */
