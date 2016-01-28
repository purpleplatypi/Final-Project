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
    if (p.facingright) {
      if (p.right ) {
        frame = (frame+1) % imageCount;
        image(right[frame], p.loc.x, p.loc.y);
      } else {
        image(stationaryright, p.loc.x, p.loc.y);
      }
    } else {
      if (p.left) {
        frame = (frame+1) % imageCount;
        image(left[frame], p.loc.x + 5, p.loc.y);
      } else {
        image(stationaryleft, p.loc.x + 5, p.loc.y);
      }
    }
  }
}