class punch {
  //declare variables
  PVector loc, vel;
  int diam;
  boolean punch;

  //make constructor
  punch() {
    loc = new PVector();
    vel = new PVector(10, 0);
    diam = 10;     //size
  }

  void display() { //displaying hitbox
    fill(255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void update(player player) {
    if (punch) {
      if (player.right) {
        loc.add(vel);
      } else if (player.left) {
        loc.sub(vel);
      }
    } else {
      loc.set(player.loc.x + player.l/2, player.loc.y + player.w/2);
    }
  }
}