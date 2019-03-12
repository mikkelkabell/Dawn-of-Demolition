import g4p_controls.*;
ArrayList<GameObject> engine;
PImage startscreen;
PImage background;
int stage;
PFont title;
String gameState;

public void setup() {
  gameState = "START";
  size(750, 850, JAVA2D);
  engine = new ArrayList<GameObject>(10000); //mængde af memory
  stage = 1;
  startscreen = loadImage("StartB.jpg");
  image(startscreen, 0, 0, 750, 850);
  title = createFont("Lobster.otf", 32);
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

  background = loadImage("Bane.png");
  image(background, 0, 0, 750, 850);


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
