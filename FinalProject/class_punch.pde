class Punch {
  //declare variables
  PVector loc, vel;
  PImage right, left;
  int diam, t;
  boolean punch;

  //make constructor
  Punch() {
    loc = new PVector();
    vel = new PVector(5, 0);
    right = loadImage("punchright.png");
    left = loadImage("punchleft.png"); 
    diam = 20;     //size
    t = 0;
  }

  void display(Player p) { 
    //fill(0, t);
    //noStroke();
    //ellipse(loc.x, loc.y, diam, diam);
    tint(255,t);
    if (p.facingright) {
      image(right, loc.x, loc.y, diam, diam);
    } else if (!p.facingright) {
      image(left, loc.x, loc.y, diam, diam);
    }
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
      if (frameCount%5 ==0) {
        punch = false;
      }
    } else if (p.facingright) {
      t = 0;
      loc.set(p.loc.x + p.l - 7, p.loc.y + p.w/2 - 5);
    } else if (!p.facingright) {
      t=0;
      loc.set(p.loc.x + 7, p.loc.y + p.w/2 - 5);
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