//declare variables
player p1, p2;
platform a, b;
punch punch1, punch2;
health h1, h2;
int mode = 0;
int cmode = 0;
PImage start, sansi, bio;
// note: modes will be changed due to location once the pages are formatted

void setup() {
  size(1200, 800);
  //initialize variables
  start= loadImage("start.png");
  sansi = loadImage("sansi.jpg");
  bio= loadImage("bio.jpg");
  p1 = new player(0, 770);
  p2 = new player(width - 30, 770);
  punch1 = new punch();
  punch2 = new punch();
  h1 = new health();
  h2 = new health();
  a = new platform(600, 730, 200, 5);
  b = new platform(500, 500, 200, 5);
}

void draw() {

  if (mousePressed && mouseX >= 1150 && mouseX <= width && mouseY >= 750 && mouseY <= height) {
    println("EXIT WORKS");
    mode=0;
    cmode= 0;
  }


  println(mode);
  startScreen();
  //instructions();
  bios();
  characters();
  //levels();
  //game();
  //end();
  rect(1175, 774, 50, 50);
}


void keyPressed() {
  if (keyCode == LEFT) {
    p1.left = true;
  }
  if (keyCode == RIGHT) {
    p1.right = true;
  }
  if (keyCode == UP) {
    p1.jumping =true;
  }
  if (keyCode == DOWN) {
    punch1.punch = true;
  }
  if (key == 'a' || key == 'A') {
    p2.left = true;
  }
  if (key == 'd' || key == 'D') {
    p2.right = true;
  }
  if (key == 'w' || key == 'W') {
    p2.jumping =true;
  }
  if (key == 's' || key == 'S') {
    punch2.punch = true;
  }
}

void keyReleased() {

  if (keyCode == LEFT) {
    p1.left = false;
  }
  if (keyCode == RIGHT) {
    p1.right = false;
  }
  if (keyCode == DOWN) {
    punch1.punch = false;
  }
  if (key == 'a' || key == 'A') {
    p2.left = false;
  }
  if (key == 'd' || key == 'D') {
    p2.right = false;
  }
  if (key == 's' || key == 'S') {
    punch2.punch = false;
  }
}