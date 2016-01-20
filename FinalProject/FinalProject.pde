//declare variables///
player p1, p2;///
platform a, b, c;////
punch punch1, punch2;
health h1, h2;
animation a1, a2;
int mode = 0;
PImage backing, sun, lockerroom;
boolean esc;
PImage start, sansi, bio, mrN, valley, monroy, mcmenamin, liu, gamebackground,andy;

void setup() {
  size(1200, 800);
  //initialize variables
  start= loadImage("start.png");
  sansi = loadImage("sansi.jpg");
  backing = loadImage("epicback.jpg");
  mrN= loadImage ("MR.ChefN.png");
  bio= loadImage("bio.jpg");
  valley=loadImage("valleynatior.png");
  monroy= loadImage("monroy.jpg");
  mcmenamin= loadImage("macman.png");
  gamebackground= loadImage("gamebackground.jpg");
  liu= loadImage("liu.JPG");
  sun = loadImage("sunrise.png");
  lockerroom = loadImage("lockerroom.jpg");
  andy =loadImage("angryandy.png");
  p1 = new player(0, 593);
  p2 = new player(width - 103, 593);
  punch1 = new punch();
  punch2 = new punch();
  h1 = new health(50, 75);
  h2 = new health(950, 75);
<<<<<<< HEAD
  a = new platform(300, 720, 800, 10);
  b = new platform(400, 625, 400, 10);
  c = new platform(0, 720, 200, 10);
}

void draw() {
  if (mode==0) {
    background(255);    
    rectMode(CENTER);
    image(sun, 0, 0, width, height);
    //zimage(andy, 0, height-400, 400, 400);
    image(start, 50, 50, 1100, 300);
    fill(255);
    //rect(width/2, height/2, 300, 100);
    textMode(CENTER);
    textSize(70);
    fill(0);
    text("START", width/2-110, height/2+25);
    fill(255);
    //rect(width/2, height-275, 300, 100);
    textMode(CENTER);
    textSize(70);
    fill(0);
    text("Controls", width/2-140, height-250);
    rectMode(CENTER);
    fill(0);
    //rect(width/2, height-150, 300, 100);
    textMode(CENTER);
    textSize(70);
    fill(0);
    text("BIOS", width/2-70, height-125);
  }
  if (mousePressed && mouseX >450 && mouseX < 750 && mouseY > 350 && mouseY < 450 && mode==0) {  //start button
    mode=1;
  }
  if (mode==1) {
    background(255);

    image(sansi, 50, 50, 200, 200);
    image(mrN, 350, 50, 200, 200);
    image(valley, 650, 50, 200, 200);
    image(liu, 950, 50, 200, 200);  
    image(monroy, 50, 300, 200, 200);
    image(mcmeniman, 950, 300, 200, 200);
    fill(255);
    rect(600, 725, 100, 50);
    fill(0);
    textMode(CENTER);
    textSize(50);
    text("P1 Pick your Character", 400, 400);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 565, 730);
  }
  if (mousePressed && mouseX >550 && mouseX < 650  && mouseY > 700 && mouseY < 750  && mode==1) {  //back button for bios   --i moved it bc if you held down the mouse on the back button for a bio it took you back to title screen since the back button was in the same spot for both screens--eric
    mode=0;
  }
  //********* Mr. Sanservino's Stuff **********//
  if (mousePressed && mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250 && mode==1) { //sansis charcter button P1
    p1.c= color(0, 255, 0);
    mode=10;
  } 
  //***** MR N'S STUFF **********/
  if (mousePressed && mouseX >350 && mouseX < 550 && mouseY > 50 && mouseY < 250 && mode==1) { //MR.N's character button  P1
    p1.c= color(255, 0, 0);
    mode=10;
  }

  //***************** Mrs. Valley's Stuff *****************//
  if (mousePressed && mouseX >650 && mouseX < 850 && mouseY > 50 && mouseY < 250 && mode==1) { //Mrs. Valley character button P1
    p1.c= color(0, 255, 255);
    mode=10;
  }  
  //************** Mr.Liu's Stuff ******************//
  if (mousePressed && mouseX >950 && mouseX < 1150 && mouseY > 50 && mouseY < 250 && mode==1) { //Mr.Liu's  charatcer button P1
    p1.c= color(255, 255, 0);
    mode=10;
  }  
  //************************ Mrs. Monroy's Stuff ****************************/
  if (mousePressed && mouseX >50 && mouseX < 250 && mouseY > 300 && mouseY < 500 && mode==1) { //Mrs. Monroy's character button P1
    p1.c= color(255);
    mode=10;
  }  
  //**************** Mr.McMeniman's Stuff *********************//
  if (mousePressed && mouseX >950 && mouseX < 1150 && mouseY > 300 && mouseY < 500 && mode==1) { //Mr.McMeniman's character button P1
    p1.c= color(0, 0, 0);
    mode=10;
  }
  if (mode==10) {
    background(255);
    fill(255);
    rect(width/2, height-275, 300, 100);      ///----buffer between p1 charcter choice and p2 character choice bc bug
    textMode(CENTER);
    textSize(70);
    fill(0);
    text("P2 Pick", width/2-140, height-250);
  }
  if (mousePressed && mouseX >450 && mouseX < 750 && mouseY > 475 && mouseY < 575 && mode==10) { // button to pick p2
    mode=11;
  }
  if (mode==11) {
    background(255);
    image(sansi, 50, 50, 200, 200);
    image(mrN, 350, 50, 200, 200);
    image(valley, 650, 50, 200, 200);
    image(liu, 950, 50, 200, 200);  
    image(monroy, 50, 300, 200, 200);
    image(mcmeniman, 950, 300, 200, 200);
    fill(255);
    rect(1000, 725, 100, 50);
    fill(0);
    textMode(CENTER);
    textSize(50);
    text("Pick your Character P2 ", 400, 400);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 965, 730);
  }
  if (mousePressed && mouseX >950 && mouseX < 1050  && mouseY > 700 && mouseY < 750  && mode==11) {  //back button for bios   --i moved it bc if you held down the mouse on the back button for a bio it took you back to title screen since the back button was in the same spot for both screens--eric
    mode=1;
  }
  //********* Mr. Sanservino's Stuff **********//
  if (mousePressed && mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250 && mode==11) { //sansis character button for P2
    p2.c= color(0, 255, 0);
    mode=12;
  } 
  //***** MR N'S STUFF **********/
  if (mousePressed && mouseX >350 && mouseX < 550 && mouseY > 50 && mouseY < 250 && mode==11) { //MR.N's character button for P2
    p2.c= color(255, 0, 0);
    mode=12;
  }

  //***************** Mrs. Valley's Stuff *****************//
  if (mousePressed && mouseX >650 && mouseX < 850 && mouseY > 50 && mouseY < 250 && mode==11) { //Mrs. Valley character button for P2
    p2.c= color(0, 255, 255);
    mode=12;
  }  
  //************** Mr.Liu's Stuff ******************//
  if (mousePressed && mouseX >950 && mouseX < 1150 && mouseY > 50 && mouseY < 250 && mode==11) { //Mr.Liu's  character button for P2
    p2.c= color(255, 255, 0);
    mode=12;
  }  
  //************************ Mrs. Monroy's Stuff ****************************/
  if (mousePressed && mouseX >50 && mouseX < 250 && mouseY > 300 && mouseY < 500 && mode==11) { //Mrs. Monroy's character button for P2
    p2.c= color(255);
    mode=12;
  }  
  //**************** Mr.McMeniman's Stuff *********************//
  if (mousePressed && mouseX >950 && mouseX < 1150 && mouseY > 300 && mouseY < 500 && mode==11) { //Mr.McMeniman's character button for P2
    p2.c= color(0, 0, 0);
    mode=12;
  }
  if (mode==12) {  //game
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

    background(200);
    //image(gamebackground,0,0,1200,800);
    fill(255);
    textSize(50);
    text("Player 1", 50, 50);
    text("Player 2", 950, 50);
    p1.display();
    p1.move();
    p1.restrict();
    p1.platformControls(a);
    p1.platformControls(b);
    p1.platformControls(c);
    p2.display();
    p2.move();
    p2.restrict();
    p2.platformControls(a);
    p2.platformControls(b);
    p2.platformControls(c);
    a.display();
    b.display();
    c.display();
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
  if (mode==2) {  //display instructions
    background(255);
    image(lockerroom, 0, 0, width, height);
    fill(255);
    textSize(50);
    text("Player 1", 100, 100);
    text("Player 2", 825, 100);
    textSize(35);
    text("Use arrow keys to move", 75, 150);
    text("Use A,W,D to move", 800, 150);
    text("hit z to return to homepage", width/2, height-50);
    text("GOAL: Eliminate the opposition...at all costs!", 100, height/1.5);
    fill(255);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==2) {  //back button for instructions
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
    image(mrN, 300, 50, 200, 200);
    image(valley, 550, 50, 200, 200);
    image(liu, 50, 300, 200, 200);  
    image(monroy, 300, 300, 200, 200);
    image(mcmeniman, 550, 300, 200, 200);
    fill(255);
    rect(600, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 565, 730);
  }
  if (mousePressed && mouseX >550 && mouseX < 650  && mouseY > 700 && mouseY < 750  && mode==3) {  //back button for bios   --i moved it bc if you held down the mouse on the back button for a bio it took you back to title screen since the back button was in the same spot for both screens--eric
    mode=0;
  }
  //********* Mr. Sanservino's Stuff **********//
  if (mousePressed && mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250 && mode==3) { //sansis bio button
    mode=4;
  }
  if (mode==4) {
    background(255);
    textSize(25);
    image(bio, 0, 0, 1200, 800);
    fill(255);
    text("Sansi...", 50, 525);
    text("Jason Sanservinio,", 150, 525);
    text("Otherwise known and the 'family man' hails from the Sanservino house, which started", 50, 575);
    text("a family buisness back during prohibition, He has a very particular set of 'skills'", 50, 625);
    text("that make him a formiddable foe.... and even a more intresting teacher....", 50, 675);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==4) {  //back button for sansis bio
    mode=3;
  }
  //***** MR N'S STUFF **********/
  if (mousePressed && mouseX >300 && mouseX < 500 && mouseY > 50 && mouseY < 250 && mode==3) { //MR.N's bio button
    mode=5;
  }
  if (mode==5) {
    background(255);
    textSize(25);
    image(bio, 0, 0, 1200, 800);
    fill(255);
    text("Mr.N", 50, 525);
    text("Peter Nowakowski,", 150, 525);
    text("was a world renowned cheif before he was fired for incessantly correcting his", 50, 575);
    text("customer's grammar. Mr.Nowakowski is skilled in the martial arts as well as the ", 50, 625);
    text("ancient tradition of MLA formatting", 50, 675);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==5) {  //back button for Mr.N's bio
    mode=3;
  }  
  //***************** Mrs. Valley's Stuff *****************//
  if (mousePressed && mouseX >550 && mouseX < 750 && mouseY > 50 && mouseY < 250 && mode==3) { //Mrs. Valley bio button
    mode=6;
  }
  if (mode==6) {
    background(255);
    textSize(25);
    image(bio, 0, 0, 1200, 800);
    fill(255);
    text("Mrs. Valley: ", 50, 525);
    text("Maryann Valley", 200, 525);
    text("has been teaching kickboxing since she was 6 and the height of 3 feet. Her firey", 50, 575);
    text("personality and loud voice are enough to make even the bravest of advisaries tremble", 50, 625);
    text("in fear. At two inches above the height of a legal midget. Valley is a lethal enemy", 50, 675);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==6) {  //back button for Valley bio
    mode=3;
  }  
  //************** Mr.Liu's Stuff ******************//
  if (mousePressed && mouseX >50 && mouseX < 250 && mouseY > 300 && mouseY < 500 && mode==3) { //Mr.Liu's  bio button
    mode=7;
  }
  if (mode==7) {
    background(255);
    textSize(25);
    image(bio, 0, 0, 1200, 800);
    fill(255);
    text("Mr.Liu", 50, 475);
    text("Rong Liu,", 150, 475);
    text("is most famously know for his service in the American Marine Corps where he single handedly", 50, 525);
    text("defeated an Al-Qaeda resistance cell using only the powers of a mysticle force known as", 50, 575);
    text("SOH CAH TOA. After this incident Mr.Liu found his calling as a Math teacher and he is", 50, 625);
    text("currently attempting to teach students using the cerebral powers of sin waves.", 50, 675);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==7) {  //back button for Mr.Liu's  bio
    mode=3;
  }  
  //************************ Mrs. Monroy's Stuff ****************************/
  if (mousePressed && mouseX >300 && mouseX < 500 && mouseY > 300 && mouseY < 500 && mode==3) { //Mrs. Monroy's bio button
    mode=8;
  }
  if (mode==8) {
    background(255);
    textSize(25);
    image(bio, 0, 0, 1200, 800);
    fill(255);
    text("Monroy:", 50, 525);
    text("Mrs. Monroy,", 150, 525);
    text("Gained the Respect of every student on campus last year after she trashed the UCVTS", 50, 575);
    text("administration in a verbal steal cage MMA fight. Combined with her skills in the", 50, 625);
    text("pyrotechnics of snack food, Mrs. Monroy can tackle any foe.", 50, 675);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==8) {  //back button for Mrs. Monroy's bio
    mode=3;
  }  
  //**************** Mr.McMeniman's Stuff *********************//
  if (mousePressed && mouseX >550 && mouseX < 750 && mouseY > 300 && mouseY < 500 && mode==3) { //Mr.McMeniman's bio button
    mode=9;
  }
  if (mode==9) {
    background(255);
    textSize(25);
    image(bio, 0, 0, 1200, 800);
    fill(255);
    text("Mr.Mcmeniman:", 50, 475);
    text("Joseph MecMeniman,", 250, 475);
    text("was the lead singer of his world (not really) renowned band the 'JAMBULANCE' until", 50, 525);
    text("the other members were permentantly incapacitated due to unknown causes. Ever since", 50, 575);
    text("his guitar slinging days McMeniman has become a teacher of history and weilds a", 50, 625);
    text("militaray-grade gavel affectionately named the OMNIPITANCE OF JUSTICE", 50, 675);

    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
  }
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==9) {  //back button for Mr.McMeniman's bio
    mode=3;
  }


=======
  a1 = new animation ("frame", 10, ".png");
  a2 = new animation ("frame", 10, ".png");
  a = new platform(100, 593, 200, 5);
  b = new platform(500, 593, 200, 5);
}

void draw() {
  startScreen();
  characters();
  instructions();
  bios();
  game();
>>>>>>> refs/remotes/origin/development
  if (esc) { //IF Z IS PRESSED THIS IS THE WAY TO GET BACK TO THE HOME SCREEN FROM ANYWHERE!!! 
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