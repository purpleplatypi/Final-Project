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
  p2 = new player(width - 30, 770);
  punch1 = new punch();
  punch2 = new punch();
  h1 = new health(50, 75);
  h2 = new health(950, 75);
  a = new platform(600, 730, 200, 5);
  b = new platform(500, 500, 200, 5);
}

void draw() {
  if (mode==0) {     
    background(255);
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
    fill(255);
    textSize(50);
    text("Player 1", 50, 50);
    text("Player 2", 950, 50);
    p1.display(0, 0, 255);
    p1.move();
    p1.restrict();
    p1.platformControls(a);
    p1.platformControls(b);
    p2.display(0, 255, 0);
    p2.move();
    p2.restrict();
    p2.platformControls(a);
    p2.platformControls(b);
    a.display();
    b.display();
    punch1.display();
    punch1.update(p1);
    h1.display();
    punch2.display();
    punch2.update(p2);
    h2.display();
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
    rect(150, 150, 200, 200);
    image(sansi, 50, 50, 200, 200);
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
    text("Otherwise known and the 'family man' hails from the Sanservino house, which started", 50, 100);
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
}