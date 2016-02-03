class Platform {
  //declare variables
  PVector loc, size;

  //make a constructor
  Platform (int x, int y, int l, int w) {    //intialize the platforms location and size when the class is called
    loc = new PVector(x, y);
    size = new PVector(l, w);
  }

  //write methods
  void display() {
    //display the platforms
    fill(0);
    rectMode(CORNER);
    rect(loc.x, loc.y, size.x, size.y);
  }
}