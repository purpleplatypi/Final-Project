void startScreen() {
  if (mode==0) {
    background(255);
  }
   void display() {
    size(1000,1000);
background(255, 204, 0);
textAlign(CENTER);
textSize(35);
text("Start", 500, 500);
fill(0);
textSize(35);
text("Instructions", 500, 550);
fill(0);
textSize(35);
text("Bios", 500, 600);
fill(0);
  }

  
  //code for page goes here
    
    
    if (mousePressed) {
      mode = 1;
    }
  }
}