//declare variables///
player p1, p2;
platform a, b, c, d, e, f, g, h, i, j, k, l;
punch punch1, punch2;
health h1, h2;
animation a1, a2;
int mode = 0;
PImage backing, sun, lockerroom;
boolean esc;
PImage start, sansi, bio, mrN, valley, monroy, mcmenamin, liu, gamebackground, andy, liuback, MrNback, mcstage, valleyback, sansiback;

void setup() {
  size(1200, 800);
  //initialize variables
  start= loadImage("start.png");
  sansi = loadImage("sansi.jpg");
  backing = loadImage("epicback.jpg");
  mrN= loadImage ("MR.ChefN.png");
  bio= loadImage("bio.jpg");
  valley=loadImage("valleynatior.png");
  valleyback=loadImage("valleynatior.jpg");
  monroy= loadImage("monroy.jpg");
  mcmenamin= loadImage("macman.png");
  gamebackground= loadImage("gamebackground.jpg");
  liu= loadImage("liu.JPG");
  sun = loadImage("sunrise.png");
  lockerroom = loadImage("lockerroom.jpg");
  andy =loadImage("angryandy.png");  
  sansiback = loadImage("jasonback.jpg");
  liuback = loadImage("abramsliu.jpg");
  MrNback = loadImage("MrNbar.jpg");
  mcstage = loadImage("mcstage.jpg");
  p1 = new player(0, height - 160);
  p2 = new player(width - 60, height - 160);
  punch1 = new punch();
  punch2 = new punch();
  h1 = new health(50, 75);
  h2 = new health(850, 75);
  a = new platform(200, 600, 800, 10);
  b = new platform(400, 450, 400, 10);
  c = new platform(0, 350, 100, 10);
  d = new platform(900, 350, 300, 10);
  e = new platform(0, 150, 100, 10);
  f = new platform(900, 150, 300, 10);
  g = new platform(300, 275, 400, 10); 
  a1 = new animation ();
  a2 = new animation ();
}

  void draw() {
  startScreen();
  characters();
  instructions();
  bios();
  game();
  gameOver();
  if (esc) {     //IF Z IS PRESSED THIS IS THE WAY TO GET BACK TO THE HOME SCREEN FROM ANYWHERE!!! 
    mode = 0;
  }
}


void keyPressed() {
  if (key == 'a' || key == 'A') {
    p1.left = true;
  }
  if (key == 'd' || key == 'D') {
    p1.right = true;
  }
  if (key == 'w' || key == 'W') {
    p1.jumping =true;
  }
  if (key == 's' || key == 'S') {
    punch1.punch = true;
  }
  if (keyCode == LEFT) {
    p2.left = true;
  }
  if (keyCode == RIGHT) {
    p2.right = true;
  }
  if (keyCode == UP) {
    p2.jumping =true;
  }
  if (keyCode == DOWN) {
    punch2.punch = true;
  }
  if (key == 'z') {
    esc = true;
  }
}

void keyReleased() {
  if (key == 'a' || key == 'A') {
    p1.left = false;
  }
  if (key == 'd' || key == 'D') {
    p1.right = false;
  }
  if (key == 's' || key == 'S') {
    punch1.punch = false;
  }
  if (keyCode == LEFT) {
    p2.left = false;
  }
  if (keyCode == RIGHT) {
    p2.right = false;
  }
  if (keyCode == DOWN) {
    punch2.punch = false;
  }
  if (key == 'z') {
    esc = false;
  }
}