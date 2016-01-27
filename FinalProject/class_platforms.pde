class Platform {
  //declare variables
  PVector loc, size;

  //make a constructor
  Platform (int x, int y, int l, int w) {
    loc = new PVector(x, y);
    size = new PVector(l, w);
  }

  void display() {
    fill(0);
    rectMode(CORNER);
    rect(loc.x, loc.y, size.x, size.y);
  }
}