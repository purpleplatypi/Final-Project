void bios() {
  if (mode==2) {
    background(255);


    rect(150, 150, 200, 200);      image(sansi, 50, 50, 200, 200);  //SANSI
 

    rect(360, 150, 200, 200); //TEACHER
    rect(570, 150, 200, 200); //TEACHER


    rect(150, 360, 200, 200); //TEACHER
    rect(360, 360, 200, 200); //TEACHER
    rect(570, 360, 200, 200); //TEACHER



    if (mousePressed && mouseX >50 && mouseX < 250 && mouseY > 50 && mouseY < 250 ) {
      cmode=1;
      println("CHECK");
    }

    if (mousePressed && mouseX >260 && mouseX < 460 && mouseY > 50 && mouseY < 250 ) {
      cmode=2;
      println("CHECK");
    }
  }
}