void bios() {
  if (mode ==3) {
    background(255);
    image(backing, 0, 0, width, height);
    rect(150, 150, 200, 200);
    image(sansi, 50, 50, 200, 200);
    image(mrN, 300, 50, 200, 200);
    image(valley, 550, 50, 200, 200);
    image(liu, 50, 300, 200, 200);  
    //image(kipp, 300, 300, 200, 200);
    image(mcmenamin, 550, 300, 200, 200);
    fill(255);
    rect(600, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 565, 730);
    if (mousePressed) {
      //********* Mr. Sanservino's Stuff **********//
      if (mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250) { //sansis bio button
        mode=6;
      }
      //***** MR N'S STUFF **********/
      if (mouseX >300 && mouseX < 500 && mouseY > 50 && mouseY < 250) { //MR.N's bio button
        mode=7;
      }
      //***************** Mrs. Valley's Stuff *****************//
      if (mouseX >550 && mouseX < 750 && mouseY > 50 && mouseY < 250) { //Mrs. Valley bio button
        mode=8;
      }
      //************** Mr.Liu's Stuff ******************//
      if (mouseX >50 && mouseX < 250 && mouseY > 300 && mouseY < 500) { //Mr.Liu's  bio button
        mode=9;
      }
      //************************ Mrs. Kipp's Stuff ****************************/
      if (mouseX >300 && mouseX < 500 && mouseY > 300 && mouseY < 500) { //Mrs. Monroy's bio button
        mode=10;
      }
      //**************** Mr.mcmenamin's Stuff *********************//
      if (mouseX >550 && mouseX < 750 && mouseY > 300 && mouseY < 500) { //Mr.mcmenamin's bio button
        mode=11;
      }
    }
    if (mousePressed && mouseX >550 && mouseX < 650  && mouseY > 700 && mouseY < 750  && mode==3) { 
      mode=0;
    }
  }

  if (mode==6) {
    background(0);
    textSize(50);
    image(sansiback, 0, 0, 790, height);
    fill(255);
    text("Sansi...", 800, 300);
    textSize(18);
    textLeading(25);
    String San = "Jason Sanservinio\n,otherwise known as the 'family man', hails\nfrom the Sanservino house, which started\na family buisness back during prohibition.\nHe has a very particular set of 'skills'\nthat make him a formiddable foe\nand an even intresting teacher....";
    text(San, 800, 325);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
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
    text("Mr.N", 850, 50);
    textSize(25);
    String MrN = "Peter Nowakowski\nwas a world renowned chef\nbefore he was fired for incessantly\ncorrecting his customers' grammar.\nMr.Nowakowski is skilled in martial\narts as well as the ancient tradition of\nMLA formatting.";
    textLeading(25);
    text(MrN, 710, 100);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
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
    text(Valley, 600, 125);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for Valley bio
      mode=3;
    }
  }

  if (mode==9) {
    background(255);
    textSize(50);
    image(liuback, 0, 0, 1200, 800);
    fill(0);
    text("Mr.Liu", 75, 75);
    textSize(25);
    text("Rong Liu, is most famously know for his service in the", 25, 125);  
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
    text("Back", 65, 730);
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for Mr.Liu's  bio
      mode=3;
    }
  } 

  if (mode==10) {
    background(255);
    textSize(25);
    //image(kippback, 0, 0, 1200, 800);
    fill(255);
    //text("Monroy:", 50, 525);
    //text("Mrs. Monroy,", 150, 525);
    //text("Gained the Respect of every student on campus last year after she trashed the UCVTS", 50, 575);
    //text("administration in a verbal steal cage MMA fight. Combined with her skills in the", 50, 625);
    //text("pyrotechnics of snack food, Mrs. Monroy can tackle any foe.", 50, 675);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for Mrs. Monroy's bio
      mode=3;
    }
  }

  if (mode==11) {
    fill(0);
    textSize(50);
    image(mcstage, 0, 0, 1200, 800);
    rect(width/2, 700, width, 200);
    fill(255);
    text("Mr.McMenamin:", 50, 650);
    textSize(25);
    textLeading(30);
    String McM = "Joseph McMeniman,was the lead singer of his world (not really) renowned band the\n'JAMBULANCE' until the other members were permentantly incapacitated due to\nunknown causes. Ever since his guitar slinging days McMenamin has become a\nteacher of history and weilds a military-grade gavel affectionately named\nOMNIPOTENCE OF JUSTICE.";
    text(McM, 50, 675);
    rect(1150, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 1115, 730);
    if (mousePressed && mouseX >1100 && mouseX < 1200  && mouseY > 700 && mouseY < 750) {  //back button for Mr.mcmenamin's bio
      mode=3;
    }
  }
}