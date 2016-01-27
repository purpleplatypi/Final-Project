void instructions() {
  if (mode==2) {  //display instructions
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for instructions
      mode=0;
    }
    background(255);
    tint(255, 200); 

    image(lockerroom, 0, 0, width, height);
    tint(255, 255); 

    fill(0);
    textSize(50);
    text("Player 2", 200, 100);
    text("Player 1", 925, 100);
    textSize(25);
    image(arrow, 800, 150, 210, 210);
    image(wasd, 75, 100, 300, 300);

    textSize(35);
    text("GOAL: Eliminate the opposition...at all costs!", width/2, height/1.5);
    fill(255);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 100, 735);
  }
}