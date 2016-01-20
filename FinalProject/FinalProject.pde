//declare variables///
player p1, p2;///
platform a, b;////
punch punch1, punch2;
health h1, h2;
int mode = 0;
PImage start, sansi, bio, mrN, valley, monroy, mcmeniman, liu,gamebackground;
// note: modes will be changed due to location once the pages are formatted

void setup() {
  size(1200, 800);
  //initialize variables
  start= loadImage("start.png");
  sansi = loadImage("sansi.jpg");
  mrN= loadImage ("mr.n.jpg");
  bio= loadImage("bio.jpg");
  valley=loadImage("valley.jpg");
  monroy= loadImage("monroy.jpg");
  mcmeniman= loadImage("mcmeniman.jpg");
  gamebackground= loadImage("gamebackground.jpg");
  liu= loadImage("liu.JPG");
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
  if (mode==1) {  //game
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
    if (p1.loc.dist(p2.loc) <= p1.l) {
      print("in contact ");
    }
  }
  if (mousePressed && mouseX >450 && mouseX < 750 && mouseY > 475 && mouseY < 575 && mode==0) { // instructions button
    mode=2;
  }
  if (mode==2) {  //display instructions
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
  if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750  && mode==2) {  //back button for instructions
    mode=0;
  }

  if (mousePressed && mouseX >450 && mouseX < 750 && mouseY > 600 && mouseY < 700 && mode==0) {  //bio button
    mode=3;
  }
  if (mode==3) {
    background(255);
    //rect(150, 150, 200, 200);//sansi
    //rect(400, 150, 200, 200);//mr.n
    //rect(650, 150, 200, 200);//valley
    //rect(150, 400, 200, 200);//liu
    //rect(400, 400, 200, 200);// monry
    //rect(650, 400, 200, 200);//mcmeniman
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
    text("customer's grammer. Mr.Nowakowski is skilled in the martial arts as well as the ", 50, 625);
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
    text("his gutar slinging days McMeniman has become a teacher of history and weilds", 50, 625);
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