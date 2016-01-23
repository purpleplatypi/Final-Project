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
    fill(r1, g1, b1);
    rect(600, 500, 400, 100);
    fill(r2, g2, b2);
    rect(600, 600, 400, 100);
    fill(0);
    textMode(CENTER);
    textSize(50);
    text("Select YOUR Teacher", 350, 400);
    text(p1text, 420, 500);
    text(p2text, 420, 600);
    textSize(30);
    text("Back", 565, 730);
    if (mousePressed) {
      if (mouseX >550 && mouseX < 650  && mouseY > 700 && mouseY < 750) {  //back button for bios
        mode=0;
      }
      if (mouseX> 300 && mouseX < 900 && 450 < mouseY && mouseY< 550) {
        p1text = "Choose teacher";
      }
      if (p1text == "Choose teacher") {
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

  if (mode==12) {
    r1 = 0;
    g1 = 0;
    b1 = 0;
    r2 = 255;
    g2 = 255;
    b2 = 255;
    background(255);
    image(sansi, 50, 50, 200, 200);
    image(mrN, 350, 50, 200, 200);
    image(valley, 650, 50, 200, 200);
    image(liu, 950, 50, 200, 200);  
    image(monroy, 50, 300, 200, 200);
    image(mcmenamin, 950, 300, 200, 200);
    fill(255);
    rect(600, 725, 100, 50);
    fill(r1, g1, b1);
    rect(600, 500, 400, 100);
    fill(r2, g2, b2);
    rect(600, 600, 400, 100);
    fill(0);
    textMode(CENTER);
    textSize(50);
    text("Select YOUR Teacher", 350, 400);
    text(p1text, 420, 500);
    text(p2text, 420, 600);
    textSize(30);
    text("Back", 565, 730);
    if (mousePressed) {
      if (mouseX >950 && mouseX < 1050  && mouseY > 700 && mouseY < 750) {  //back button for bios
        mode=1;
      }
      if (mouseX> 300 && mouseX < 900 && 550 < mouseY && mouseY< 650) {
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