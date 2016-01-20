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
    fill(0);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void update(player player) {
    if (punch) {
      if (player.facingright) {
        loc.add(vel);
      } else {
        loc.sub(vel);
      }
      if (frameCount%3 ==0) {
        punch = false;
      }
    } else {
      loc.set(player.loc.x + player.l/2, player.loc.y + player.w/2);
    }
  }
  boolean isInContactWith(player player) { 
    if (loc.y +diam <= player.loc.y + player.w && loc.y >= player.loc.y && loc.x + diam >= player.loc.x && player.loc.x + player.l >= loc.x) {
      return true;
    } else {
      return false;
    }
  }
}