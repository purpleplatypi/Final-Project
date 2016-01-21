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
    textSize(25);
    image(sansiback, 0, 0, 1200, 800);
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
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for sansis bio
      mode=3;
    }
  }

  if (mode==7) {
    background(255);
    textSize(25);
    image(MrNback, 0, 0, 1200, 800);
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
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for Mr.N's bio
      mode=3;
    }
  }

  if (mode==8) {
    background(255);
    textSize(25);
    image(valleyback, 0, 0, 1200, 800);
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
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for Valley bio
      mode=3;
    }
  }

  if (mode==9) {
    background(255);
    textSize(25);
    image(liuback, 0, 0, 1200, 800);
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
    text("Mr.mcmenamin:", 50, 475);
    text("Joseph MecMeniman,", 250, 475);
    text("was the lead singer of his world (not really) renowned band the 'JAMBULANCE' until", 50, 525);
    text("the other members were permentantly incapacitated due to unknown causes. Ever since", 50, 575);
    text("his guitar slinging days mcmenamin has become a teacher of history and weilds a", 50, 625);
    text("militaray-grade gavel affectionately named the OMNIPITANCE OF JUSTICE", 50, 675);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for Mr.mcmenamin's bio
      mode=3;
    }
  }
}