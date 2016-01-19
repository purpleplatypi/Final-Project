//declare variables
player p1, p2;
platform a, b;
punch punch1, punch2;
health h1, h2;
int mode = 0;
PImage start, sansi, bio;
// note: modes will be changed due to location once the pages are formatted

void setup() {
  size(1200, 800);
  //initialize variables
  start= loadImage("start.png");
  sansi = loadImage("sansi.jpg");
  bio= loadImage("bio.jpg");
  p1 = new player(0, 770);
  //p2 = new player(width - 30, 770);
  punch1 = new punch();
  h1 = new health();
  a = new platform(600, 730, 200, 5);
  b = new platform(500, 500, 200, 5);
}

void draw() {
  startScreen();
  instructions();
  bios();
  characters();
  levels();
  game();
  end();
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
}

void keyReleased() {

  if (keyCode == LEFT) {
    p1.left = false;
  }
  if (keyCode == RIGHT) {
    p1.right = false;
  }
}