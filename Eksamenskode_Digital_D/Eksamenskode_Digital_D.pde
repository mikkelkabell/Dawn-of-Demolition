ArrayList<GameObject> engine;
PImage startscreen, background, Sword, Bow, Shield;
int stage;
PFont title;
String gameState;
Men myMen;
Enemy myEnemy;
boolean pressed = false;
boolean imageOver = false;
color Highlight;
float x, y;
long nowpress, lastpress, cooldown=5000;

public void setup() {
  size(750, 850, P2D);
  background = loadImage("Bane.png");
  Sword = loadImage("Sword.png");
  Bow = loadImage("Bow.png");
  Shield = loadImage("Shield.png");
  frameRate(60);
  gameState = "START";
  engine = new ArrayList<GameObject>(10000); //mængde af memory
  stage = 1;
  Highlight = color(204);
  startscreen = loadImage("StartB.jpg");
  image(startscreen, 0, 0, 750, 850);
  title = createFont("Lobster.otf", 32);
  myMen = new Men(random(140, 590), 0, random(-3, 3), 2);
  engine.add(myMen);
  myEnemy = new Enemy(random(140, 590), 400, random(-4, 4), 1);
  engine.add(myEnemy);
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
   if (mouseX>650 && mouseX<690 && mouseY>650 && mouseY<730) {
      engine.add(new Men(random(140, 590), 0, 1, 1));
  }
  }

  
  /*
  if (keyPressed) {
   if (key =='f' || key == 'F' && pressed == false) {
   engine.add(new Men(random(140, 590), 0, 1, 1));
   pressed = true;
   }
   if (key =='d' || key == 'D') {
   engine.add(new Enemy(random(140, 590), 850, 1, 1));
   }
   }
   */


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

void wonGame () {
}

void loseGame () {
}
