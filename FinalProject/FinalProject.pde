//declare variables
player a;
platform p1, p2;
int mode = 0;
// note: modes will be changed due to location once the pages are formatted

void setup() {
  size(1200, 800);
  //initialize variables
  a = new player(0, 770);
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
    //game over screen
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