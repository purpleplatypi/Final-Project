void instructions() {
  if (mode==2) {  //display instructions
    background(255);
    image(lockerroom, 0, 0, width, height);
    fill(255);
    textSize(50);
    text("Player 1", 100, 100);
    text("Player 2", 825, 100);
    textSize(35);
    text("Use arrow keys to move", 75, 150);
    text("Use A,W,D to move", 800, 150);
    text("hit z to return to homepage", width/2, height-50);
    text("GOAL: Eliminate the opposition...at all costs!", 100, height/1.5);
    fill(255);
    rect(100, 725, 100, 50);
    textMode(CENTER);
    textSize(30);
    fill(0);
    text("Back", 65, 730);
    if (mousePressed && mouseX >50 && mouseX < 150  && mouseY > 700 && mouseY < 750) {  //back button for instructions
      mode=0;
    }
  }
}