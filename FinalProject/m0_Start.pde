void startScreen() {
  if (mode==0) {  
    rectMode(CENTER);
    textMode(CENTER);
    image(sun, 0, 0, width, height);
    //image(andy, 0, height-400, 400, 400);
    image(start, 50, 50, 1100, 300);
    textSize(70);
    fill(0);
    text("START", width/2-110, height/2+25);
    text("Controls", width/2-140, height-250);
    text("BIOS", width/2-70, height-125);
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
    }
  }
}