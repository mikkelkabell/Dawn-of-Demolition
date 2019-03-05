import g4p_controls.*;
PImage startscreen;
int stage;
PFont title;
String gameState;

public void setup() {
  gameState = "START";
  size(1200, 1200, JAVA2D);
  stage = 1;
  //createGUI();
  //  customGUI();
  // Place your setup code here
  startscreen = loadImage("StartB.jpg");
  image(startscreen, 0, 0, 1200, 1200);
  title = createFont("Lobster.otf", 32);
}

public void draw() {
  if (gameState == "START") {
    homeScreen(); }
    else if(gameState == "inGame") {
    inGame(); }
    else if(gameState == "wonGame") {
    wonGame(); }
  }




// Use this method to add additional statements
// to customise the GUI controls
// public void customGUI() {


void homeScreen() {
  if (stage==1) {
    textAlign(CENTER); 
    textSize(50);
    textFont(title);
    text("Dawn of Demolition", width/2, 300);
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

  background(255, 0, 0);
}

void wonGame () {}
