//import processing.sound.*;
//SoundFile file;

//declare variables///
Player p1, p2;
Platform a, b, c, d, e, f, g;
Punch punch1, punch2;
Health h1, h2;
Animation a1, a2;
int mode = 0;
float scf, wai;
boolean esc, undy;
PFont font;
int c1, c2;
String p1text, p2text;
PImage backing, sun, lockerroom;
PImage start, sansi, mrN, valley, kippback, mcmenamin, liu, gamebackground, andy, liuback, MrNback, mcstage, valleyback, sansiback;
PImage faceSan, faceVal, faceKipp, faceLiu, faceMc, faceMrN, arrow, wasd, school, Kippback;


void setup() {
  //initialize variables
  undy = false;
  scf = 400;
  wai = 400;
  font = createFont("Arial Rounded MT Bold", 48);
  textFont(font);
  textAlign(LEFT);
  size(1200, 800);
  //file = new SoundFile(this, "fightmusic.mp3");
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
  Kippback = loadImage("Kippback.png");
  c1 = 255;
  c2 = 0;
  p1text = "P1 Click Here";
  p2text = "P2 Click Here";
  p1 = new Player(0, height - 130);
  p2 = new Player(width - 60, height - 130);
  punch1 = new Punch();
  punch2 = new Punch();
  h1 = new Health(50, 75);
  h2 = new Health(850, 75);
  a = new Platform(200, 650, 500, 10);
  b = new Platform(1000, 600, 300, 10);
  c = new Platform(500, 500, 400, 10);
  d = new Platform(0, 250, 200, 10);
  e = new Platform(300, 350, 400, 10);
  f = new Platform(0, 500, 200, 10);
  g = new Platform(900, 250, 300, 10); 
  a1 = new Animation ();
  a2 = new Animation ();
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