class Punch {
  //declare variables
  PVector loc, vel;
  int diam, t;
  boolean punch;

  //make constructor
  Punch() {
    loc = new PVector();
    vel = new PVector(5, 0);
    diam = 10;     //size
    t = 0;
  }

  void display() { 
    fill(0,t);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }

  void update(Player p) {
    if (punch) {
      if (p.facingright) {
        t = 255;
        loc.add(vel);
      } else {
        t = 255;
        loc.sub(vel);
      }
      if (frameCount%3 ==0) {
        punch = false;
      }
    } else if (p.facingright) {
      t = 0;
<<<<<<< HEAD
      loc.set(p.loc.x + p.l - 5, p.loc.y + p.w/2);
    } else if(!p.facingright){
=======
      loc.set(player.loc.x + player.l - 5, player.loc.y + player.w/2);
    } else if (!player.facingright) {
>>>>>>> origin/development
      t = 0;
      loc.set(p.loc.x, p.loc.y + p.w/2);
    }
  }
  boolean isInContactWithLeft(Player p) { 
    if (loc.y + diam/2 <= p.loc.y + p.w && loc.y - diam/2 >= p.loc.y && loc.x + diam/2 >= p.loc.x &&p.loc.x + p.l/2 >= loc.x + diam/2) {
      return true;
    } else {
      return false;
    }
  }
  boolean isInContactWithRight(Player p) { 
    if (loc.y + diam/2 <= p.loc.y + p.w && loc.y - diam/2 >= p.loc.y && loc.x - diam/2 >= p.loc.x + p.l/2 && p.loc.x + p.l >= loc.x - diam/2) {
      return true;
    } else {
      return false;
    }
  }
}