import processing.sound.*;

SoundFile file;

//declare variables///
player p1, p2;
platform a, b, c, d, e, f, g, h, i, j, k, l;
punch punch1, punch2;
health h1, h2;
animation a1, a2;
int mode = 0;
<<<<<<< HEAD
float scf, wai;
boolean esc, undy;
PFont font;
int r1,g1,b1,r2,g2,b2;
=======
int r1, g1, b1, r2, g2, b2;
>>>>>>> refs/remotes/origin/development
String p1text, p2text;
PImage backing, sun, lockerroom;
PImage start, sansi, mrN, valley, kippback, mcmenamin, liu, gamebackground, andy, liuback, MrNback, mcstage, valleyback, sansiback;
PImage faceSan, faceVal, faceKipp, faceLiu, faceMc, faceMrN, arrow, wasd, school;




void setup() {
 undy = false;
  scf = 400;
  wai = 400;
  font = createFont("Arial Rounded MT Bold", 48);
  textFont(font);
  textAlign(LEFT);
  size(1200, 800);
  //initialize variables
  file = new SoundFile(this, "fightmusic.mp3");
  start= loadImage("start.png");
  sansi = loadImage("sansi.jpg");
  backing = loadImage("magnet.jpg");
  mrN= loadImage ("MR.ChefN.png");
  // kippback = 
  valley=loadImage("valleynatior.png");
  valleyback=loadImage("valleynatior.jpg");
  //kipp = 
  mcmenamin= loadImage("macman.png");
  gamebackground= loadImage("gamebackground.jpg");
  liu= loadImage("liu.JPG");
  sun = loadImage("sunrise.png");
  lockerroom = loadImage("lockerroom.jpg");
  andy =loadImage("angryandy.png");  
  sansiback = loadImage("jasonback.jpg");
  liuback = loadImage("abramsliu.jpg");
  MrNback = loadImage("MrNbar.png");
  mcstage = loadImage("mcstage.jpg");
  faceSan = loadImage("FaceSan.png");
  faceVal = loadImage("FaceVal.png");
  faceKipp = loadImage("FaceKipp.png");
  faceLiu = loadImage("FaceLiu.png");
  faceMc = loadImage("FaceMc.png");
  faceMrN = loadImage("FaceMrN.png");
  arrow= loadImage("arrow keys.png");
  wasd = loadImage("wasd.png");
  school = loadImage("bridge.jpg");
  r1 = 255;
  g1 = 255;
  b1 = 255;
  r2 = 0;
  g2 = 0;
  b2 = 0;
  p1text = "P1 Click Here";
  p2text = "P2 Click Here";
  p1 = new player(0, height - 130);
  p2 = new player(width - 60, height - 130);
  punch1 = new punch();
  punch2 = new punch();
<<<<<<< HEAD
  a = new platform(200, 600, 800, 10);
  b = new platform(400, 450, 400, 10);
  c = new platform(0, 350, 100, 10);
  d = new platform(900, 350, 300, 10);
  e = new platform(0, 150, 100, 10);
  f = new platform(900, 150, 300, 10);
  g = new platform(300, 275, 400, 10); 
=======
  h1 = new health(50, 75);
  h2 = new health(850, 75);
  a = new platform(200, 650, 500, 10);
  b = new platform(1000, 600, 300, 10);
  c = new platform(500, 500, 400, 10);
  d = new platform(0, 250, 200, 10);
  e = new platform(300, 350, 400, 10);
  f = new platform(0, 500, 200, 10);
  g = new platform(900, 250, 300, 10); 
>>>>>>> refs/remotes/origin/development
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