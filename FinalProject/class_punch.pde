class punch {
  //declare variables
  PVector loc, vel;
  int diam,t;
  boolean punch;

  //make constructor
  punch() {
    loc = new PVector();
    vel = new PVector(5, 0);
    diam = 10;     //size
    t = 0;
  }

  void display() { //displaying hitbox
    fill(0,t);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void update(player player) {
    if (punch) {
      if (player.facingright) {
        t = 255;
        loc.add(vel);
      } else {
        t = 255;
        loc.sub(vel);
      }
      if (frameCount%5 ==0) {
        punch = false;
      }
    } else if (player.facingright) {
      t = 0;
      loc.set(player.loc.x + player.l, player.loc.y + player.w/2);
    } else if(!player.facingright){
      t = 0;
      loc.set(player.loc.x, player.loc.y + player.w/2);
    }
  }
  boolean isInContactWithLeft(player player) { 
    if (loc.y + diam/2 <= player.loc.y + player.w && loc.y - diam/2 >= player.loc.y && loc.x + diam/2 >= player.loc.x && player.loc.x + player.l/2 >= loc.x + diam/2) {
      return true;
    } else {
      return false;
    }
  }
  boolean isInContactWithRight(player player) { 
    if (loc.y + diam/2 <= player.loc.y + player.w && loc.y - diam/2 >= player.loc.y && loc.x - diam/2 >= player.loc.x + player.l/2 && player.loc.x + player.l >= loc.x - diam/2) {
      return true;
    } else {
      return false;
    }
  }
}