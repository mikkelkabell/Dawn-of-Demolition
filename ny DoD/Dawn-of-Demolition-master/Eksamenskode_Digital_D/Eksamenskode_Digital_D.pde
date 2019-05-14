ArrayList<GameObject> engine;
PImage startscreen, background, Sword, Bow, Shield, ShieldSH, BowS, SwordSW, GOver, YouWin, EnemyS;
int stage;
PFont title;
String gameState;
Men myMen;
Enemy myEnemy;
Bullet bullets;
Archer myArcher ;//= new Archer();
boolean pressed = false;
float x, y, th, cd;

public void setup() {
  size(750, 850, P2D);
  background = loadImage("Bane.png");
  GOver = loadImage("GOver.jpg");
  YouWin = loadImage("YouWin.jpg");
  Sword = loadImage("Sword.png");
  Bow = loadImage("Bow.png");
  Shield = loadImage("Shield.png");  
  SwordSW = loadImage("SwordSW.png");
  BowS = loadImage("BowS.png");
  ShieldSH = loadImage("ShieldSH.png");
  EnemyS = loadImage("EnemyS.png");
  frameRate(60);
  gameState = "START";
  engine = new ArrayList<GameObject>(10000); //mængde af memory
  stage = 1;
  startscreen = loadImage("StartB.jpg");
  title = createFont("Lobster.otf", 32);
  myEnemy = new Enemy(random(140, 590), 400);
  engine.add(myEnemy);
  engine.add(new EnemyProducer());
  rectMode(CENTER);
  ellipseMode(CENTER);
}

public void draw() {
  if (gameState == "START") {
    homeScreen();
  } else if (gameState == "inGame") {
    inGame();
  } else if (gameState == "wonGame") {
    wonGame();
  } else if (gameState == "loseGame") {
    loseGame(); 
    {
    }
  }
}


void homeScreen() {
  if (stage==1) {
    image(startscreen, 0, 0, 750, 850);
    textAlign(CENTER); 
    textSize(50);
    textFont(title);
    text("Dawn of Demolition", width/2, 310);
    fill(0);
    text("Tryk for at starte", width/2, 480);
    fill(0);
    //Vi bruger funktionen keypressed, at når der bliver trykket
    if (mousePressed == true) {
      gameState = "inGame";
    }
  }
}

void inGame () {
  // boolean pressed = false;
  image(background, 0, 0, 750, 850);
  image(Sword, 650, 650, 40, 80);
  image(Bow, 650, 570, 40, 40);
  image(Shield, 650, 490, 40, 38);
  if (mousePressed) {
    if (frameCount % 5 == 0) {
      if (mouseX>650 && mouseX<690 && mouseY>650 && mouseY<730) { // (cd == th) {
        engine.add(new Soldier(random(140, 590), 0, 0, 0));
      }
      if (mouseX>650 && mouseX<690 && mouseY>570 && mouseY<610) {
        engine.add(new Archer(random(140, 590), 0, 0, 0));
      }
      if (mouseX>650 && mouseX<690 && mouseY>490 && mouseY<530) {
        engine.add(new Knight(random(140, 590), 0, 0, 0));
      }
    }
  }

  int i = engine.size()-1;
  while (i >=0) {
    GameObject obj = engine.get(i);
    obj.show();
    obj.act();
    if (obj.hasDied()) {
      engine.remove(i);
    }
    i--;
  }
}
/*if (Enemy.hp == 0) {
 gameState = "wonGame";
 } else if (Men.hp == 0) {
 gameState = "loseGame";
 }*/


void wonGame () {
  image(YouWin, 0, 0, 750, 850);

  if (mousePressed == true) {
    gameState = "HomeScreen";
  }
}

void loseGame () {
  image(GOver, 0, 0, 750, 850);

  if (mousePressed == true) {
    gameState = "HomeScreen";
  }
}
