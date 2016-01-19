//declare variables
player a;
platform p1, p2;
punch b;
int mode = 0;
PImage start, sansi, bio;
// note: modes will be changed due to location once the pages are formatted

void setup() {
  size(1200, 800);
  //initialize variables
  start= loadImage("start.png");
  sansi = loadImage("sansi.jpg");
  bio= loadImage("bio.jpg");
  a = new player(0, 770);
  b = new punch();
  p1 = new platform(600, 730, 200, 5);
  p2 = new platform(500, 500, 200, 5);
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
    a.left = true;
  }
  if (keyCode == RIGHT) {
    a.right = true;
  }
  if (keyCode == UP) {
    a.jumping =true;
  }
}

void keyReleased() {

  if (keyCode == LEFT) {
    a.left = false;
  }
  if (keyCode == RIGHT) {
    a.right = false;
  }
}