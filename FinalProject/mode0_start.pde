void startScreen() {
  if (mode==0) {     
    background(255);
    image(start, 0, 0);
    rectMode(CENTER);
    fill(255);
    rect(width/2, height/2, 300, 100);
    textMode(CENTER);
    textSize(70);
    fill(0);
    text("BIOS", width/2-70, height/2+25);
  }
  if (mousePressed && mouseX >450 && mouseX < 750 && mouseY > 350 && mouseY < 450 ) {
    mode=2;
  }
}