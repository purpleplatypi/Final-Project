class platform {
  //declare variables
  PVector loc, size;

  //make a constructor
  platform (int x, int y, int l, int w) {
    loc = new PVector(x, y);
    size = new PVector(l, w);
  }

  void display() {
    fill(255);
    rect(loc.x, loc.y, size.x, size.y);
  }
}