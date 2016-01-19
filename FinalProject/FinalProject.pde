//declare variables
player a;
platform p1, p2;
punch b;
int mode = 0;
PImage start,sansi,bio;
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
  if (mode==0) {
    startScreen();
  }
  if (mousePressed && mouseX >450 && mouseX < 750 && mouseY > 350 && mouseY < 450 ) {
    mode=2;
  }

 // instructions();
if(mode==2){
  bios();
}
if(mousePressed && mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250 ){
  mode=3;
}

if(mode==3){
  background(255);
  textSize(25);
  image(bio,0,0,1200,800);
  fill(255);
  text("Sansi...",50,50);
  text("Jason Sanservinio,",150,50);
  text("Otherwise known and the 'family man' hails from the Sanservino house, which started",50,100);
  text("a family buisness back during prohibition, He has a very particular set of 'skills'",50,150);
  text("that make him a formiddable foe.... and even a more intresting teacher....",50,200);
}

  characters();
  levels();
 // game();
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