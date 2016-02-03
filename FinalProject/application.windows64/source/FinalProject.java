import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class FinalProject extends PApplet {

    //import minim library for sound

//declare variables and classes
Minim m;
AudioPlayer s1;
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


public void setup() {
  //initialize variables
  m = new Minim(this);
  s1 = m.loadFile("fightmusic.mp3", 1024);
  undy = false;
  scf = 400;
  wai = 400;
  font = createFont("Arial Rounded MT Bold", 48);
  textFont(font);
  textMode(CENTER);
  textAlign(LEFT);
  
  start= loadImage("start.png");
  sansi = loadImage("sansi.jpg");
  backing = loadImage("magnet.jpg");
  mrN= loadImage ("MR.ChefN.png");
  valley=loadImage("valleynatior.png");
  valleyback=loadImage("valleynatior.jpg");
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

public void draw() {
  s1.play();    //plays song
  //void functions to run different parts of the game
  startScreen();
  characters();
  instructions();
  bios();
  game();
  gameOver();
  if (esc) {         //if esc is true, reset all game variables and return to home screen
    mode = 0;
    h1.health=300;
    h2.health=300;
    p1text = "P1 Click Here";
    p2text = "P2 Click Here";
    h1.c = color(0, 255, 0);
    h2.c = color(0, 255, 0);
    c1 = 255;
    c2 = 0;
    stroke(0);
  }
}

//controls key functions
public void keyPressed() {
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
public void keyReleased() {
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
class Animation {
  //declare variables
  PImage[] right;
  PImage[] left;
  int imageCount;
  int frame;
  PImage stationaryright, stationaryleft;

  //make a constructor
  Animation() {
    stationaryright = loadImage("right00.png");
    stationaryleft = loadImage("left00.png");
    imageCount = 10;
    right = new PImage[imageCount];
    left = new PImage [imageCount];
    //load image sets for right and left
    for (int i = 0; i < imageCount; i++) {
      String fileright = "right" + nf(i, 2) + ".png";
      right[i] = loadImage(fileright);
    }
    for (int i = 0; i < imageCount; i++) {
      String fileleft = "left" + nf(i, 2) + ".png";
      left[i] = loadImage(fileleft);
    }
  }
  
  //write methods
  public void display(Player p) {
    tint(255,255); 
    if (p.facingright) {      //if facing right...
      if (p.right ) {      //if moving right...
        //draw the images for the player moving right
        frame = (frame+1) % imageCount;
        image(right[frame], p.loc.x, p.loc.y);
      } else {    //otherwise, just draw one image
        image(stationaryright, p.loc.x, p.loc.y);
      }
    } else {    //if not facing right then do the same thing for facing left
      if (p.left) {
        frame = (frame+1) % imageCount;
        image(left[frame], p.loc.x + 5, p.loc.y);
      } else {
        image(stationaryleft, p.loc.x + 5, p.loc.y);
      }
    }
  }
}
class Health {
  PVector loc;
  float health, diam;
  int c;

  //make a constructor
  Health (float x, float y) {
    loc = new PVector(x, y);
    health = 300;
    c = color(0, 255, 0);
  }

  //write methods
  public void display () {
    //draw the health bar
    fill(c);
    rect(loc.x, loc.y, health, 10);
  }
  public void update() {
    //reduce the health if this method is called
    health=health-5;
  }
  public void healthcolor() {
    //change the color of the health as it gets lower
    if (health <= 200) {
      c=color(255, 255, 0);
    }
    if (health<= 100) {
      c=color(255, 0, 0);
    }
    if (health<=0) {    //if the health goes below 0 go to game over page
      mode=5;
    }
  }
}
class Platform {
  //declare variables
  PVector loc, size;

  //make a constructor
  Platform (int x, int y, int l, int w) {    //intialize the platforms location and size when the class is called
    loc = new PVector(x, y);
    size = new PVector(l, w);
  }

  //write methods
  public void display() {
    //display the platforms
    fill(0);
    rectMode(CORNER);
    rect(loc.x, loc.y, size.x, size.y);
  }
}
class Player {
  //declare variables
  boolean left, right, jumping, falling, facingright, bounceBack, lefthit, righthit;
  PVector loc, vel, g;
  float l, w, ground;
  float origJumpSpeed ;
  PImage pic;

  //make constructor
  Player(int x, int y) {  
    loc = new PVector(x, y);
    vel = new PVector(5, -20);
    g = new PVector(0, 1);
    l=70;
    w=130;
    ground = height - w;
    origJumpSpeed=-20;
  }

  //write methods
  public void display() {
    //draw the hitbox but don't show it
    noFill();
    noStroke();
    rectMode(CORNER);
    rect(loc.x, loc.y, l, w);
  }

  public void face() {
    //draw the face image on the player
    tint(255,255);
    image(pic, loc.x + 5, loc.y -10, 50, 50);
  }

  public void move() {
    if (left) {        // uses boolean true or false statement to move player left if the left key is pressed
      loc.x -= vel.x;
      facingright = false;    //used to determine which way the character is facing
    }
    if (right) {
      loc.x += vel.x;  // uses boolean true or false statement to move player right if the right key is pressed
      facingright = true;
    }
    if (jumping) {
      //add gravity to the velocity that is added to the y location which makes it seem as if the player jumped up
      vel.add(g);
      loc.y += vel.y;
      if (loc.y > ground) {    //make sure the player doesn't end up below the ground
        loc.y = ground;
        vel.y = origJumpSpeed;
        jumping = false;
        vel.y = origJumpSpeed;
      }
    }
    if (bounceBack) {     //bounces back when hit
      if (righthit ) {
        loc.x -= vel.x;
      } else if (lefthit) {
        loc.x += vel.x;
      }
      bounceBack = false;
    }
  }

  public void restrict() {    //don't let the players accelerate off the screen too much
    if (loc.x - vel.x < 0) {
      loc.x += vel.x;
    }
    if (loc.x + vel.x + l > width) {
      loc.x -= vel.x;
    }
  }

  public void platformControls (Platform pl) {    //interact with platform class
    if (jumping && vel.y > 0 && pl.loc.x < loc.x + l && loc.x < pl.loc.x + pl.size.x && loc.y + w > pl.loc.y && loc.y + w < pl.loc.y + pl.size.y) {
      //if it is within the area of the platform, land on the platform
      vel.add(g);
      loc.y += vel.y;
      if (loc.y > pl.loc.y - w) {
        loc.y = pl.loc.y - w;
        vel.y = origJumpSpeed;
        jumping = false;
        vel.y = origJumpSpeed;
      }
    }
    if (loc.y + w == pl.loc.y) {
      if (pl.loc.x == loc.x + l || loc.x == pl.loc.x + pl.size.x) {
        //if no longer on the platform, fall off
        vel.y = 0;
        jumping = true;
      }
    }
  }
}
class Punch {
  //declare variables
  PVector loc, vel;
  PImage right, left;
  int diam, t;
  boolean punch;

  //make constructor
  Punch() {
    loc = new PVector();
    vel = new PVector(5, 0);
    right = loadImage("punchright.png");
    left = loadImage("punchleft.png"); 
    diam = 20;     //size
    t = 0;
  }

  public void display(Player p) { 
    //draw the punching glove
    tint(255,t);
    if (p.facingright) {
      image(right, loc.x, loc.y, diam, diam);
    } else if (!p.facingright) {
      image(left, loc.x, loc.y, diam, diam);
    }
  }

  public void update(Player p) {
    if (punch) {     //if punching
      //move the punch depending which way the player is facing
      if (p.facingright) {
        t = 255;
        loc.add(vel);
      } else {
        t = 255;
        loc.sub(vel);
      }
      if (frameCount%5 ==0) {
        punch = false;
      }
    } else if (p.facingright) {    //if not moving, then just draw the punch on the character
      t = 0;
      loc.set(p.loc.x + p.l - 22, p.loc.y + p.w/2 - 5);
    } else if (!p.facingright) {
      t=0;
      loc.set(p.loc.x + 5, p.loc.y + p.w/2 - 5);
    }
  }
  public boolean isInContactWithLeft(Player p) {     //check if punch is in contact with the player's left side
    if (loc.y + diam/2 <= p.loc.y + p.w && loc.y - diam/2 >= p.loc.y && loc.x + diam/2 >= p.loc.x &&p.loc.x + p.l/2 >= loc.x + diam/2) {
      return true;
    } else {
      return false;
    }
  }
  public boolean isInContactWithRight(Player p) {     //check if punch is in contact with the player's left side
    if (loc.y + diam/2 <= p.loc.y + p.w && loc.y - diam/2 >= p.loc.y && loc.x - diam/2 >= p.loc.x + p.l/2 && p.loc.x + p.l >= loc.x - diam/2) {
      return true;
    } else {
      return false;
    }
  }
}
public void startScreen() {
  if (mode==0) {  
    rectMode(CENTER);
    image(sun, 0, 0, width, height);
    if (scf <= 2000) {
      image(andy, 0, wai, scf, scf);
    }
    image(start, 50, 50, 1100, 400);
    fill(0);
    textAlign(CENTER);
    textSize(100);
    text("START", width/2, height/2 + 75);
    textSize(50);
    text("CONTROLS", width/2, height-125 );
    textSize(50);
    text("BIOS", width/2, height/2 + 200 );
    if (undy) { //boolean for the undy easter egg
      if (scf<1000) {     // if he is smaller than 1000 times original
        scf +=100;       // make him bigger by 100, move him by 100
        wai -= 100;
      } else {
        scf +=500;     //make him bigger by 500 move him by 500 
        wai -= 500;
      }
    }
    if (mousePressed) {
      if (mouseX >450 && mouseX < 750 && mouseY > 400 && mouseY < 500) { // start button
        mode = 1;
      }
      if (mouseX >450 && mouseX < 750 && mouseY > 600 && mouseY < 700) {  //instr button
        mode =  2;
      }
      if (mouseX >450 && mouseX < 750 && mouseY > 550 && mouseY < 600) {  //bios button
        mode = 3;
      }
      if (mouseX >0 && mouseX < 200 && mouseY > 500 && mouseY < 800) { //easter egg button
        undy = true;
      }
    }
  }
}
public void characters() {
  if (mode==1) {
    background(255);
    image(sansi, 50, 50, 200, 200);
    image(mrN, 350, 50, 200, 200);
    image(valley, 650, 50, 200, 200);
    image(liu, 950, 50, 200, 200);  
    image(faceKipp, 50, 300, 200, 200);
    image(mcmenamin, 950, 300, 200, 200);
    fill(255);
    rect(600, 725, 100, 50);
    fill(c1);
    rect(600, 550, 400, 100);
    fill(c2);
    rect(600, 650, 400, 100);
    fill(0);
    textMode(CENTER);
    textSize(50);
    text("Select YOUR Teacher", width/2, 400);
    text(p1text, width/2, 550);
    text(p2text, width/2, 650);
    textSize(30);
    text("Back", width/2, 730);
    if (mousePressed) {
      if (mouseX >550 && mouseX < 650  && mouseY > 700 && mouseY < 750) {  //back button for bios
        mode=0;
      }
      if (mouseX> 300 && mouseX < 900 && 500 < mouseY && mouseY< 600) {    // acts as a buffer for the selection screen
        p1text = "Choose teacher";
      }
      if (p1text == "Choose teacher") {
        p1.facingright = true;    //make it so player 1 faces right when the game starts
        //********* Mr. Sanservino's Stuff **********//
        if (mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250) { //sansis charcter button P1
          p1.pic = faceSan;
          mode =12;
        } 
        //***** MR N'S STUFF **********/
        if (mouseX >350 && mouseX < 550 && mouseY > 50 && mouseY < 250) { //MR.N's character button  P1
          p1.pic = faceMrN;
          mode=12;
        }
        //***************** Mrs. Valley's Stuff *****************//
        if (mouseX >650 && mouseX < 850 && mouseY > 50 && mouseY < 250) { //Mrs. Valley character button P1
          p1.pic = faceVal;
          mode=12;
        }  
        //************** Mr.Liu's Stuff ******************//
        if (mouseX >950 && mouseX < 1150 && mouseY > 50 && mouseY < 250) { //Mr.Liu's  charatcer button P1
          p1.pic = faceLiu;
          mode=12;
        }  
        //************************ Mrs. Kipp's Stuff ****************************/
        if (mouseX >50 && mouseX < 250 && mouseY > 300 && mouseY < 500) { //Mrs. Kipp's character button P1
          p1.pic = faceKipp;
          mode=12;
        }  
        //**************** Mr.mcmenamin's Stuff *********************//
        if (mouseX >950 && mouseX < 1150 && mouseY > 300 && mouseY < 500) { //Mr.mcmenamin's character button P1
          p1.pic = faceMc;
          mode=12;
        }
      }
    }
  }

  //selection for player 2
  if (mode==12) {
    c1 = 0;
    c2 = 255;
    background(255);
    image(sansi, 50, 50, 200, 200);
    image(mrN, 350, 50, 200, 200);
    image(valley, 650, 50, 200, 200);
    image(liu, 950, 50, 200, 200);  
    image(faceKipp, 50, 300, 200, 200);
    image(mcmenamin, 950, 300, 200, 200);
    fill(255);
    rect(600, 725, 100, 50);
    fill(c1);
    rect(600, 550, 400, 100);
    fill(c2);
    rect(600, 650, 400, 100);
    fill(0);
    textMode(CENTER);
    textSize(50);
    text("Select YOUR Teacher", width/2, 400);
    text(p1text, width/2, 550);
    text(p2text, width/2, 650);
    textSize(30);
    text("Back", width/2, 730);
    if (mousePressed) {
      if (mouseX >950 && mouseX < 1050  && mouseY > 700 && mouseY < 750) {  //back button for bios
        mode=1;
      }
      if (mouseX> 300 && mouseX < 900 && 600 < mouseY && mouseY< 700) {
        p2text = "Choose teacher";
      }
      if (p2text == "Choose teacher") {
        //********* Mr. Sanservino's Stuff **********//
        if (mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250) { //sansis character button for P2
          p2.pic = faceSan;
          mode=4;
        }
        //***** MR N'S STUFF **********/
        if (mouseX >350 && mouseX < 550 && mouseY > 50 && mouseY < 250) { //MR.N's character button for P2
          p2.pic = faceMrN;
          mode=4;
        }
        //***************** Mrs. Valley's Stuff *****************//
        if (mouseX >650 && mouseX < 850 && mouseY > 50 && mouseY < 250) { //Mrs. Valley character button for P2
          p2.pic = faceVal;
          mode=4;
        }  
        //************** Mr.Liu's Stuff ******************//
        if (mouseX >950 && mouseX < 1150 && mouseY > 50 && mouseY < 250) { //Mr.Liu's  character button for P2
          p2.pic = faceLiu;
          mode=4;
        }  
        //************************ Mrs. Kipp's Stuff ****************************/
        if (mouseX >50 && mouseX < 250 && mouseY > 300 && mouseY < 500) { //Mrs. Monroy's character button for P2
          p2.pic = faceKipp;
          mode=4;
        }  
        //**************** Mr.mcmenamin's Stuff *********************//
        if (mouseX >950 && mouseX < 1150 && mouseY > 300 && mouseY < 500) { //Mr.mcmenamin's character button for P2
          p2.pic = faceMc;
          mode=4;
        }
      }
    }
  }
}
public void instructions() {
  if (mode==2) {  //display instructions
   if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for instructions
      mode=0;
    }
    background(255);
    tint(255, 100); 
    image(lockerroom, 0, 0, width, height);
    tint(255, 255); 
    fill(0);
    textSize(50);
    text("Player 1", 200, 100);
    text("Player 2", 925, 100);
    textSize(25);
    image(arrow, 800, 150, 210, 210);
    image(wasd, 75, 100, 300, 300);
    textSize(35);
    text("GOAL: Eliminate the opposition...at all costs!", width/2, height/2);
    text("Press ''s'' or the down key to attack", width/2, height/1.5f); 
    text("Press ''z'' to reset game", width/2, height/1.3f);
    fill(255);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 100, 735);
  }
}
public void bios() {
  if (mode ==3) {
    textAlign(CENTER);
    background(255);
    tint(255, 150); 
    image(backing, 0, 0, width, height);
    tint(255, 255); 
    rect(150, 150, 200, 200);
    image(sansi, 50, 50, 200, 200);
    image(mrN, 350, 50, 200, 200);
    image(valley, 650, 50, 200, 200);
    image(liu, 950, 50, 200, 200);  
    image(faceKipp, 50, 300, 200, 200);
    image(mcmenamin, 950, 300, 200, 200);
    fill(255);
    rect(400, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", width/3, 735);
    if (mousePressed) {
      if (mouseX > 350 && mouseX < 450  && mouseY > 700 && mouseY < 750) { 
        mode=0;
      }
      //********* Mr. Sanservino's Stuff **********//
      if (mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250) { //sansis bio button
        mode=6;
      }
      //***** MR N'S STUFF **********/
      if (mouseX >350 && mouseX < 550 && mouseY > 50 && mouseY < 250) { //MR.N's bio button
        mode=7;
      }
      //***************** Mrs. Valley's Stuff *****************//
      if (mouseX >650 && mouseX < 850 && mouseY > 50 && mouseY < 250) { //Mrs. Valley bio button
        mode=8;
      }
      //************** Mr.Liu's Stuff ******************//
      if (mouseX >950 && mouseX < 1150 && mouseY > 50 && mouseY < 250) { //Mr.Liu's  bio button
        mode=9;
      }
      //************************ Mrs. Kipp's Stuff ****************************/
      if (mouseX >50 && mouseX < 250 && mouseY > 300 && mouseY < 500) { //Mrs. Monroy's bio button
        mode=10;
      }
      //**************** Mr.mcmenamin's Stuff *********************//
      if (mouseX >950 && mouseX < 1150 && mouseY > 300 && mouseY < 500) { //Mr.mcmenamin's bio button
        mode=11;
      }
    }
  }

  if (mode==6) {
    background(0);
    textSize(70);
    image(sansiback, 0, 0, 790, height);
    fill(255);
    text("Sansi.", 1000, 275);
    textSize(18);
    textLeading(25);
    String San = "Jason Sanservinio,\notherwise known as the ''family man'', hails\nfrom the Sanservino house, which started\nas a family buisness back during prohibition.\nHe has a very particular set of ''skills''\nthat make him a formiddable foe\nand an even more intresting teacher....";
    text(San, 1000, 325);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 100, 735);
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for sansis bio
      mode=3;
    }
  }

  if (mode==7) {
    background(255);
    image(MrNback, 0, 0, 1200, 800);
    fill(0);
    rect(950, 150, 500, 300);   
    fill(255);
    textSize(50);
    text("Mr.N", 950, 50);
    textSize(25);
    String MrN = "Peter Nowakowski\nwas a world renowned chef\nbefore he was fired for incessantly\ncorrecting his customers' grammar.\nMr.Nowakowski is skilled in martial\narts as well as the ancient tradition of\nMLA formatting.";
    textLeading(25);
    text(MrN, 950, 100);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 100, 735);
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for Mr.N's bio
      mode=3;
    }
  }

  if (mode==8) {
    background(255);
    textSize(50);
    image(valleyback, 0, 0, 1200, 800);
    fill(255);
    text("Mrs. Valley: ", 700, 75);
    String Valley = "Maryann Valley has been teaching\nkickboxing since she was 6. Her fiery\npersonality and loud voice are enough\nto make even the bravest of adversaries\ntremble in fear. At two inches above the\nheight of a legal midget, Valley is a lethal\nenemy.";
    textSize(25);
    textLeading(30);
    text(Valley, 700, 125);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 100, 735);
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for Valley bio
      mode=3;
    }
  }

  if (mode==9) {
    background(255);
    textSize(50);
    image(liuback, 0, 0, 1200, 800);
    fill(0);
    textAlign(LEFT);
    text("Mr. Rong Liu", 25, 50);
    textSize(25);
    text("Rong Liu is most famously know for his service in the", 25, 125);  
    text("American Marine Corps where he single handedly", 25, 175);
    text("defeated an Al-Qaeda resistance cell using only", 25, 225); 
    text("the powers of a mysticle force known as", 25, 275);
    text("SOH CAH TOA. After this incident Mr.Liu", 25, 325); 
    text("found his calling as a Math teacher, and he", 25, 375);
    text("is currently attempting to teach students", 25, 425);
    text("using the cerebral powers of sin waves.", 25, 475);
    fill(255);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    textAlign(CENTER);
    text("Back", 100, 735);
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for Mr.Liu's  bio
      mode=3;
    }
  } 

  if (mode==10) {   
    textAlign(LEFT);
    image(Kippback, 0, 0, 1200, 800);
    fill(0);
    textSize(50);
    rect(width/2, 650, width, 300);
    fill(255);
    text("Mrs. Kipp:", 25, 560);
    textSize(25);
    textLeading(30);
    String Kipp = "Mary Kipp, during her pre-teaching career,\nused the alias 'Phantom Section' \nto ride with the infamous biker gang \u201cThe Free Association AutoCADDERs\u201d \nfeared for their high stakes carjackings. \nKipp went off the grid in the early 90's. \nShe reappeared as the sophomore teacher of technology at MHS. \nArmed with a weaponized CNC router, Kipp remains on the FBI\u2019s most wanted list.";
    rect(1150, 755, 100, 50);
    text(Kipp, 25, 600);
    textSize(30);
    textAlign(LEFT);
    fill(0);
    text("Back", 1110, height-35);
    if (mousePressed && mouseX >1100 && mouseX < 1200  && mouseY > 700 && mouseY < 765) {  //back button for Mrs kipp's bio
      mode=3;
    }
  }

  if (mode==11) {
    textAlign(LEFT);
    fill(0);
    textSize(50);
    image(mcstage, 0, 0, 1200, 800);
    rect(width/2, 700, width, 200);
    fill(255);
    text("Mr.McMenamin:", 25, 650);
    textSize(25);
    textLeading(30);
    String McM = "Joseph McMeniman,was the lead singer of his world (not really) renowned band the\n ''JAMBULANCE'' until the other members were permentantly incapacitated due to\nunknown causes. Ever since his guitar slinging days McMenamin has become a\nteacher of history and weilds a military-grade gavel affectionately named\nOMNIPOTENCE OF JUSTICE.";
    text(McM, 25, 675);
    rect(1150, 725, 100, 50);
    textSize(30);
    textMode(CENTER);
    fill(0);
    text("Back", 1110, height-60);
    if (mousePressed && mouseX >1100 && mouseX < 1200  && mouseY > 700 && mouseY < 750) {  //back button for Mr.mcmenamin's bio
      mode=3;
    }
  }
}
public void game() {
  if (mode==4) {  //game
    /**************
     display players
     if keypressed
     move players
     if other keypressed
     send hitboxes
     if hitbox hits
     health reduced
     if on top of platforms
     land on it
     ******************/
    background(gamebackground);
    fill(255);
    textSize(50);
    text("Player 1", 200, 50);
    text("Player 2", 1000, 50);
    a1.display(p1);
    a2.display(p2);
    p1.display();
    punch1.display(p1);
    punch1.update(p1);
    p1.move();
    p1.restrict();
    p1.platformControls(a);
    p1.platformControls(b);
    p1.platformControls(c);
    p1.platformControls(d);
    p1.platformControls(e);
    p1.platformControls(f);
    p1.platformControls(g);
    p2.display();
    punch2.display(p2);
    punch2.update(p2);
    p2.move();
    p2.restrict();
    p2.platformControls(a);
    p2.platformControls(b);
    p2.platformControls(c);
    p2.platformControls(d);
    p2.platformControls(e);
    p2.platformControls(f);
    p2.platformControls(g);
    a.display();
    b.display();
    c.display();
    d.display();
    e.display();
    f.display();
    g.display();
    h1.display();
    h2.display();
    h1.healthcolor();
    h2.healthcolor();
    p1.face();
    p2.face();
    if (punch1.punch || punch2.punch) {
      if (punch1.isInContactWithLeft(p2)) {
        p2.lefthit = true;
        p2.bounceBack = true;
        h2.update();
      }
      if (punch1.isInContactWithRight(p2)) {
        p2.righthit = true;
        p2.bounceBack = true;
        h2.update();
      }
      if (punch2.isInContactWithLeft(p1)) {
        p1.lefthit = true;
        p1.bounceBack = true;
        h1.update();
      }
      if (punch2.isInContactWithRight(p1)) {
        p1.righthit = true;
        p1.bounceBack = true;
        h1.update();
      }
    }
    //makes sure the players dont overlap each other
    if (p1.loc.dist(p2.loc) <= p1.l + 5) {
      if (p1.facingright) {
        if (!p2.facingright&&p1.loc.x < p2.loc.x) {
          p1.loc.x -= p1.vel.x;
          p2.loc.x += p2.vel.x;
        }
        if (p2.facingright) {
          if (p1.loc.x < p2.loc.x) {
            p1.loc.x -= p1.vel.x;
          } else if (p1.loc.x > p2.loc.x) {
            p2.loc.x -= p2.vel.x;
          }
        }
      }
      if (!p1.facingright) {
        if (!p2.facingright) {
          if (p1.loc.x < p2.loc.x) {
            p2.loc.x += p2.vel.x;
          } else if (p1.loc.x > p2.loc.x) {
            p1.loc.x += p2.vel.x;
          }
        }
        if (p2.facingright&& p1.loc.x > p2.loc.x) {
          p1.loc.x += p1.vel.x;
          p2.loc.x -= p2.vel.x;
        }
      }
    }
    //allows the players to land on each other
    if (p1.jumping && p1.vel.y > 0 && p1.loc.x + p1.l/2 >= p2.loc.x && p1.loc.x + p1.l/2 <= p2.loc.x + p2.l && p1.loc.y + p1.w >= p2.loc.y && p1.loc.y + p1.w < p2.loc.y + p2.w) {
      p1.vel.add(p1.g);
      p1.loc.y += p1.vel.y;
      if (p1.loc.y >= p2.loc.y - p1.w) {
        p1.loc.y = p2.loc.y - p1.w;
        p1.vel.y = p1.origJumpSpeed;
        p1.jumping = false;
        p1.vel.y = p1.origJumpSpeed;
      }
    }
    if (p1.loc.y + p1.w == p2.loc.y) {
      if (p2.loc.x == p1.loc.x + p1.l || p1.loc.x == p2.loc.x + p2.l) {
        p1.vel.y = 0;
        p1.jumping = true;
      }
    }
    if (p2.jumping && p2.vel.y > 0 && p2.loc.x + p2.l/2 >= p1.loc.x && p2.loc.x + p2.l/2 <= p1.loc.x + p1.l && p2.loc.y + p2.w >= p1.loc.y && p2.loc.y + p2.w < p1.loc.y + p1.w) {
      p2.vel.add(p2.g);
      p2.loc.y += p2.vel.y;
      if (p2.loc.y >= p1.loc.y - p2.w) {
        p2.loc.y = p1.loc.y - p2.w;
        p2.vel.y = p2.origJumpSpeed;
        p2.jumping = false;
        p2.vel.y = p2.origJumpSpeed;
      }
    }
    if (p2.loc.y + p2.w == p1.loc.y) {
      if (p1.loc.x == p2.loc.x + p2.l || p2.loc.x == p1.loc.x + p1.l) {
        p2.vel.y = 0;
        p2.jumping = true;
      }
    }
  }
}
PImage gameover;

public void gameOver() {
  gameover =  loadImage("gameover.jpg");
  if (mode == 5) {
    image(gameover, 0, 0, width, height);
    textAlign(CENTER);
    textSize(200);
    fill(255, 204, 0);
    text("GAME OVER", width/2, 200);
    textSize(150);
    text("wins", width/4.5f, 750);
  }
  if (h2.health <= 0) {
    fill(255, 20, 0);
    textSize(300);
    text("P1", width/4.5f, 600);
  }
  if (h1.health <= 0) {
    fill(255, 204, 0);
    textSize(300);
    text("P2", width/4.5f, 600);
  }
}
  public void settings() {  size(1200, 800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "FinalProject" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
