void startScreen() {
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
    text("START", width/2, height/2 + 125);
    textSize(50);
    text("CONTROLS", width/2, height-125 );
    textSize(50);
    text("BIOS", width/2, height/2 + 200 );
    if (undy) {
      if (scf<1000) {
        scf +=100;
        wai -= 100;
      } else {
        scf +=500;
        wai -= 500;
      }
    }
    if (mousePressed) {
      if (mouseX >450 && mouseX < 750 && mouseY > 550 && mouseY < 600) {  //bios button
        mode = 3;
      }
      if (mouseX >450 && mouseX < 750 && mouseY > 450 && mouseY < 550) { // start button
        mode = 1;
      }
      if (mouseX >450 && mouseX < 750 && mouseY > 600 && mouseY < 700) {  //instr button
        mode =  2;
<<<<<<< HEAD
      }
=======
      } 
>>>>>>> origin/development
      if (mouseX >0 && mouseX < 150 && mouseY > 600 && mouseY < 800) {
        undy = true;
      }
    }
  }
}