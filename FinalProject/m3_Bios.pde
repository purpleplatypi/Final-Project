void bios() {
  if (mode ==3) {
    background(255);
    image(backing, 0, 0, width, height);
    rect(150, 150, 200, 200);
    image(sansi, 50, 50, 200, 200);
    image(mrN, 300, 50, 200, 200);
    image(valley, 550, 50, 200, 200);
    image(liu, 50, 300, 200, 200);  
    image(monroy, 300, 300, 200, 200);
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
      //************************ Mrs. Monroy's Stuff ****************************/
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
    background(255);
    textSize(18);
    image(sansiback, 0, 0, 1200, 800);
    fill(255);
    text("Sansi...", 800, 325);
    text("Jason Sanservinio,", 900, 325);
    text("Otherwise known and the 'family man' hails", 800, 355);
    text("from the Sanservino house, which started", 800, 385);
    text("a family buisness back during prohibition,", 800, 415); 
    text("He has a very particular set of 'skills'", 800, 445);
    text("that make him a formiddable foe....", 800, 475); 
    text("and even a more intresting teacher....", 800, 505);
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
    textSize(25);
    image(MrNback, 0, 0, 1200, 800);
    fill(255);
    text("Mr.N", 250, 125);
    text("Peter Nowakowski,", 350, 125);
    text("was a world renowned cheif before he was", 250, 175);
    text("fired for incessantly correcting his", 250, 225);
    text("customer's grammar. Mr.Nowakowski is", 250,275); 
    text("skilled in the martial arts as well as the ", 250, 325);
    text("ancient tradition of MLA formatting", 250, 375);
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
    textSize(25);
    image(valleyback, 0, 0, 1200, 800);
    fill(255);
    text("Mrs. Valley: ", 550, 75);
    text("Maryann Valley", 700, 75);
    text("has been teaching kickboxing since she was", 550, 125); 
    text("6 and the height of 3 feet. Her firey", 550, 175);
    text("personality and loud voice are enough to", 550, 225);
    text("make even the bravest of advisaries tremble", 550, 275);
    text("in fear. At two inches above the height of", 550, 325);
    text("a legal midget. Valley is a lethal enemy", 550, 375);
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
    textSize(25);
    image(liuback, 0, 0, 1200, 800);
    fill(0);
    text("Mr.Liu", 25, 75);
    text("Rong Liu,", 125, 75);
    text("is most famously know for his service in the", 25,125);  
    text("American Marine Corps where he single handedly", 25, 175);
    text("defeated an Al-Qaeda resistance cell using only", 25, 225); 
    text("the powers of a mysticle force known as", 25, 275);
    text("SOH CAH TOA. After this incident Mr.Liu", 25, 325); 
    text("found his calling as a Math teacher and he", 25, 375);
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
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for Mrs. Monroy's bio
      mode=3;
    }
  }

  if (mode==11) {
    background(255);
    textSize(25);
    image(mcstage, 0, 0, 1200, 800);
    fill(255);
    text("Mr.mcmenamin:", 50, 525);
    text("Joseph MecMeniman,", 250, 525);
    text("was the lead singer of his world (not really) renowned band the 'JAMBULANCE' until", 50, 575);
    text("the other members were permentantly incapacitated due to unknown causes. Ever since", 50, 625);
    text("his guitar slinging days mcmenamin has become a teacher of history and weilds a", 50, 675);
    text("militaray-grade gavel affectionately named the OMNIPITANCE OF JUSTICE", 50, 725);
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