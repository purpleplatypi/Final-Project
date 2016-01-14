//declare variables
Level1 l1;
void setup(){
  size(1200,800);
  //initialize variables
  l1= new Level1();
}

void draw(){
  background(0);
  startScreen();
  game();
  //instructions page
  //character page
  //game screen
  //game over screen
}

void keyPressed() {
  if (keyCode == LEFT) {
    l1.left = true;
  }
  if (keyCode == RIGHT) {
    l1.right = true;
  }
  if (keyCode == UP) {
    l1.jumping =true;
  }
}

void keyReleased() {

  if (keyCode == LEFT) {
    l1.left = false;
  }
  if (keyCode == RIGHT) {
    l1.right = false;
  }
}