class animation {
  //declare variables
  PImage[] right;
  int imageCount;
  int frame;
  PImage stationary;

  //make a constructor
  animation(String prefix, int count, String suffix) {
    stationary = loadImage("frame00.png");
    imageCount = count;
    right = new PImage[imageCount];
    for (int i = 0; i < imageCount; i++) {
      String filename = prefix + nf(i, 2) + suffix;
      right[i] = loadImage(filename);
    }
  }
  //write methods
  void display(player player) {
    if (player.left || player.right) {
      frame = (frame+1) % imageCount;
      image(right[frame], player.loc.x, player.loc.y);
    } else {
      image(stationary, player.loc.x, player.loc.y);
    }
  }
}