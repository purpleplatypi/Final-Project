class Animation {
  //declare variables
  PImage[] right;
  PImage[] left;
  int imageCount;
  int frame;
  PImage stationaryright, stationaryleft;

  //make a constructor
  Animation() {
    stationaryright = loadImage("right00.png");
    stationaryleft = loadImage("left00.png");
    imageCount = 10;
    right = new PImage[imageCount];
    left = new PImage [imageCount];
    //load image sets for right and left
    for (int i = 0; i < imageCount; i++) {
      String fileright = "right" + nf(i, 2) + ".png";
      right[i] = loadImage(fileright);
    }
    for (int i = 0; i < imageCount; i++) {
      String fileleft = "left" + nf(i, 2) + ".png";
      left[i] = loadImage(fileleft);
    }
  }
  
  //write methods
  void display(Player p) {
    tint(255,255); 
    if (p.facingright) {      //if facing right...
      if (p.right ) {      //if moving right...
        //draw the images for the player moving right
        frame = (frame+1) % imageCount;
        image(right[frame], p.loc.x, p.loc.y);
      } else {    //otherwise, just draw one image
        image(stationaryright, p.loc.x, p.loc.y);
      }
    } else {    //if not facing right then do the same thing for facing left
      if (p.left) {
        frame = (frame+1) % imageCount;
        image(left[frame], p.loc.x + 5, p.loc.y);
      } else {
        image(stationaryleft, p.loc.x + 5, p.loc.y);
      }
    }
  }
}