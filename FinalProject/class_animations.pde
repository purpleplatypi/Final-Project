class animation {
  //declare variables
  PImage[] right;
  PImage[] left;
  int imageCount;
  int frame;
  PImage stationaryright, stationaryleft;

  //make a constructor
  animation() {
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
  void display(player player) {
    if (player.facingright) {
      if (player.right ) {
        frame = (frame+1) % imageCount;
        image(right[frame], player.loc.x - 5, player.loc.y);
      } else {
        image(stationaryright, player.loc.x, player.loc.y);
      }
    } else {
      if (player.left) {
        frame = (frame+1) % imageCount;
        image(left[frame], player.loc.x, player.loc.y);
      } else {
        image(stationaryleft, player.loc.x, player.loc.y);
      }
    }
  }
}