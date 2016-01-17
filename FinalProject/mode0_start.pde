void startScreen() {
  if (mode==0) {
    background(255); //code for page goes here
    image(start,0,0);
    rectMode(CENTER);
    fill(255);
    rect(width/2,height/2,300,100);
    textMode(CENTER);
    textSize(70);
    fill(0);
    text("BIOS",width/2-70,height/2+25);
    
    //if (mousePressed) {
     // mode = 1;
   // }
  }
}