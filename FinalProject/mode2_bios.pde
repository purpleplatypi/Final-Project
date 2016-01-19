void bios() {
  if (mode==2) {
    background(255);
    rect(150, 150, 200, 200);
    image(sansi, 50, 50, 200, 200);
  }
    if (mousePressed && mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250 ) {
      mode=3;
    }
  }