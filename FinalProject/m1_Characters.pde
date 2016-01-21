void characters() {
  if (mode==1) {
    background(255);
    image(sansi, 50, 50, 200, 200);
    image(mrN, 350, 50, 200, 200);
    image(valley, 650, 50, 200, 200);
    image(liu, 950, 50, 200, 200);  
    image(monroy, 50, 300, 200, 200);
    image(mcmenamin, 950, 300, 200, 200);
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
    if (mousePressed) {
      if (mouseX >550 && mouseX < 650  && mouseY > 700 && mouseY < 750) {  //back button for bios
        mode=0;
      }
      //********* Mr. Sanservino's Stuff **********//
      if (mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250) { //sansis charcter button P1
        p1.c= color(0, 255, 0);
        mode=12;
      } 
      //***** MR N'S STUFF **********/
      if (mouseX >350 && mouseX < 550 && mouseY > 50 && mouseY < 250) { //MR.N's character button  P1
        p1.c= color(255, 0, 0);
        mode=12;
      }
      //***************** Mrs. Valley's Stuff *****************//
      if (mouseX >650 && mouseX < 850 && mouseY > 50 && mouseY < 250) { //Mrs. Valley character button P1
        p1.c= color(0, 255, 255);
        mode=12;
      }  
      //************** Mr.Liu's Stuff ******************//
      if (mouseX >950 && mouseX < 1150 && mouseY > 50 && mouseY < 250) { //Mr.Liu's  charatcer button P1
        p1.c= color(255, 255, 0);
        mode=12;
      }  
      //************************ Mrs. Monroy's Stuff ****************************/
      if (mouseX >50 && mouseX < 250 && mouseY > 300 && mouseY < 500) { //Mrs. Monroy's character button P1
        p1.c= color(255);
        mode=12;
      }  
      //**************** Mr.mcmenamin's Stuff *********************//
      if (mouseX >950 && mouseX < 1150 && mouseY > 300 && mouseY < 500) { //Mr.mcmenamin's character button P1
        p1.c= color(0, 0, 0);
        mode=12;
      }
    }
  }
  
  if (mode==12) {
    background(255);
    fill(255);
    rect(width/2, height-275, 300, 100);      ///----buffer between p1 charcter choice and p2 character choice bc bug
    textMode(CENTER);
    textSize(70);
    fill(0);
    text("P2 Pick", width/2-140, height-250);
    if (mousePressed && mouseX >450 && mouseX < 750 && mouseY > 475 && mouseY < 575) { // button to pick p2
      mode=13;
    }
  }
  
  if (mode==13) {
    background(255);
    image(sansi, 50, 50, 200, 200);
    image(mrN, 350, 50, 200, 200);
    image(valley, 650, 50, 200, 200);
    image(liu, 950, 50, 200, 200);  
    image(monroy, 50, 300, 200, 200);
    image(mcmenamin, 950, 300, 200, 200);
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
    if (mousePressed) {
      if (mouseX >950 && mouseX < 1050  && mouseY > 700 && mouseY < 750) {  //back button for bios
        mode=1;
      }
      //********* Mr. Sanservino's Stuff **********//
      if (mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250) { //sansis character button for P2
        p2.c= color(0, 255, 0);
        mode=4;
      }
      //***** MR N'S STUFF **********/
      if (mouseX >350 && mouseX < 550 && mouseY > 50 && mouseY < 250) { //MR.N's character button for P2
        p2.c= color(255, 0, 0);
        mode=4;
      }
      //***************** Mrs. Valley's Stuff *****************//
      if (mouseX >650 && mouseX < 850 && mouseY > 50 && mouseY < 250) { //Mrs. Valley character button for P2
        p2.c= color(0, 255, 255);
        mode=4;
      }  
      //************** Mr.Liu's Stuff ******************//
      if (mouseX >950 && mouseX < 1150 && mouseY > 50 && mouseY < 250) { //Mr.Liu's  character button for P2
        p2.c= color(255, 255, 0);
        mode=4;
      }  
      //************************ Mrs. Monroy's Stuff ****************************/
      if (mouseX >50 && mouseX < 250 && mouseY > 300 && mouseY < 500) { //Mrs. Monroy's character button for P2
        p2.c= color(255);
        mode=4;
      }  
      //**************** Mr.mcmenamin's Stuff *********************//
      if (mouseX >950 && mouseX < 1150 && mouseY > 300 && mouseY < 500) { //Mr.mcmenamin's character button for P2
        p2.c= color(0, 0, 0);
        mode=4;
      }
    }
  }
}