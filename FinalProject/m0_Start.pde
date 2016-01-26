void startScreen() {
  if (mode==0) {  
    rectMode(CENTER);
    textMode(CENTER);
    image(sun, 0, 0, width, height);
    if (scf <= 2000) {
      image(andy, 0, wai, scf, scf);
    }
    image(start, 50, 50, 1100, 400);
    textSize(70);
    fill(0);
    text("START", width/2-110, height/2+25);
    text("Controls", width/2-140, height-250);
    text("BIOS", width/2-70, height-125);
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
      if (mouseX >450 && mouseX < 750 && mouseY > 350 && mouseY < 450) {  //start button
        mode=1;
      }
      if (mouseX >450 && mouseX < 750 && mouseY > 475 && mouseY < 575) { // instructions button
        mode=2;
      }
      if (mouseX >450 && mouseX < 750 && mouseY > 600 && mouseY < 700) {  //bio button
        mode=3;
      }
      if (mouseX >0 && mouseX < 150 && mouseY > 600 && mouseY < 800) {
        println("check");
        undy = true;
      }
    }
  }
}