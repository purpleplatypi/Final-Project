//declare variables
player p1, p2;
platform a, b;
punch punch1, punch2;
health h1, h2;
int mode = 0;
PImage start, sansi, bio, valley, andy, MrN, MrM, backing;
boolean esc;
// note: modes will be changed due to location once the pages are formatted

void setup() {
  size(1200, 800);
  //initialize variables
  start= loadImage("start.png");
  sansi = loadImage("sansi.jpg");
  valley= loadImage("valleynatior.png");
  andy= loadImage("angryandy.png");
  MrN = loadImage("MR.ChefN.png");
  MrM = loadImage("macman.png");
  backing = loadImage("epicback.jpg");

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
  if (mode==0) {
    background(255);
    image(andy, 0, height-300, 300, 300);
    image(start, 0, 0);
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2, 300, 100);
    textMode(CENTER);
    textSize(70);
    fill(0);
    text("START", width/2-110, height/2+25);
    fill(255);
    rect(width/2, height-275, 300, 100);
    textMode(CENTER);
    textSize(70);
    fill(0);
    text("Controls", width/2-140, height-250);
    rectMode(CENTER);
    fill(255);
    rect(width/2, height-150, 300, 100);
    textMode(CENTER);
    textSize(70);
    fill(0);
    text("BIOS", width/2-70, height-125);
  }
  if (mousePressed && mouseX >450 && mouseX < 750 && mouseY > 350 && mouseY < 450 && mode==0) {  //start button
    mode=1;
  }
  if (mode==1) {
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
    background(0);
    p1.display();
    p1.move();
    p1.restrict();
    p1.platformControls(a);
    p1.platformControls(b);
    p2.display();
    p2.move();
    p2.restrict();
    p2.platformControls(a);
    p2.platformControls(b);
    a.display();
    b.display();
    punch1.display();
    punch1.update(p1);
    h1.display();
    h1.update(p1);
    punch2.display();
    punch2.update(p2);
    h2.display();
    h2.update(p2);
  }
  if (mousePressed && mouseX >450 && mouseX < 750 && mouseY > 475 && mouseY < 575 && mode==0) { // instructions button
    mode=2;
  }
  if (mode==2) {
    background(255);
    fill(0);
    textSize(50);
    text("Player 1", 100, 100);
    text("Player 2", 900, 100);
    textSize(20);
    text("Use arrow keys to move", 100, 150);
    text("Use A,W,D to move", 900, 150);
    text("hit z to return to homepage", width/2, height-50);
    fill(255);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==2) {  //back button
    mode=0;
  }

  if (mousePressed && mouseX >450 && mouseX < 750 && mouseY > 600 && mouseY < 700 && mode==0) {  //bio button
    mode=3;
  }
  if (mode==3) {
    background(255);
    image(backing, 0, 0, width, height);
    rect(150, 150, 200, 200);
    image(sansi, 50, 50, 200, 200);
    image(valley, 250, 50, 200, 200);
    image(MrN, 450, 50, 200, 200);
    image(MrM, 650, 50, 200, 200);    
    fill(255);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==3) {  //back button
    mode=0;
  }

  if (mousePressed && mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250 && mode==3) {
    mode=4;
  }
  if (mode==4) {
    background(255);
    textSize(25);
    image(bio, 0, 0, 1200, 800);
    fill(255);
    text("Sansi...", 50, 50);
    text("Jason Sanservinio,", 150, 50);
    text("Otherwise known as the 'family man' hails from the Sanservino house, which started", 50, 100);
    text("a family buisness back during prohibition, He has a very particular set of 'skills'", 50, 150);
    text("that make him a formiddable foe.... and even a more intresting teacher....", 50, 200);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==4) {  //back button
    mode=3;
  }

  if (mousePressed && mouseX >250 && mouseX < 450 && mouseY > 50 && mouseY < 250 && mode==3) {
    mode=5;
  }

  if (mode==5) {
    background(255);
    textSize(25);
    image(bio, 0, 0, 1200, 800);
    fill(255);
    text("Mrs. Valley...", 40, 50);
    text("Has been teaching kickboxing since the age of six and the height of three feet.", 40, 100);
    text("These skills, combined with her loud voice and fiery attiude can make even the bravest", 40, 150);
    text("of men tremble. At two inches above the height of the legal midget, Mrs. Valley is a deadly foe.", 40, 200);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==5) {  //back button
    mode=3;
  }

  if (mousePressed && mouseX >450 && mouseX < 650 && mouseY > 50 && mouseY < 250 && mode==3) {
    mode=6;
  }
  if (mode==6) {
    background(255);
    textSize(25);
    image(bio, 0, 0, 1200, 800);
    fill(255);
    text("Mr. N...", 40, 50);
    text("Peter Nowakoski was orgininally a world reknowed chef, until he was fired for", 40, 100);
    text("constantly correcting his customers' grammer. Now he teaches freashman English and", 40, 150);
    text("Is trained numerous martial arts including the ancient tradition of MLA formatting.", 40, 200);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==6) {  //back button
    mode=3;
  }

  if (mousePressed && mouseX >650 && mouseX < 850 && mouseY > 50 && mouseY < 250 && mode==3) {
    mode=7;
  }
  if (mode==7) {
    background(255);
    textSize(25);
    image(bio, 0, 0, 1200, 800);
    fill(255);
    text("Mr. M...", 40, 50);
    text("Joseph McMenamin spent his early days in a world (not really) famous band the", 40, 100);
    text("Jambulance. He left the group shortly after all the other members were incapacitaed due", 40, 150);
    text("to unknown circumstances. He currently teaches history and wields a mititary-grade gavel", 40, 200);
    text("affectionately named the Omnipotence of Justice", 40, 250);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==7) {  //back button
    mode=3;
  }
  if (esc) { //IF Z IS PRESSED THIS IS THE WAY TO GET BACK TO THE HOME SCREEN FROM ANYWHERE!!! 
    mode = 0;
  }
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
  if (key == 'z') {
    esc = true;
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
  if (key == 'z') {
    esc = false;
  }
}