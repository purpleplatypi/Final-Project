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
    //draw the punching glove
    tint(255,t);
    if (p.facingright) {
      image(right, loc.x, loc.y, diam, diam);
    } else if (!p.facingright) {
      image(left, loc.x, loc.y, diam, diam);
    }
  }

  void update(Player p) {
    if (punch) {     //if punching
      //move the punch depending which way the player is facing
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
    } else if (p.facingright) {    //if not moving, then just draw the punch on the character
      t = 0;
      loc.set(p.loc.x + p.l - 22, p.loc.y + p.w/2 - 5);
    } else if (!p.facingright) {
      t=0;
      loc.set(p.loc.x + 5, p.loc.y + p.w/2 - 5);
    }
  }
  boolean isInContactWithLeft(Player p) {     //check if punch is in contact with the player's left side
    if (loc.y + diam/2 <= p.loc.y + p.w && loc.y - diam/2 >= p.loc.y && loc.x + diam/2 >= p.loc.x &&p.loc.x + p.l/2 >= loc.x + diam/2) {
      return true;
    } else {
      return false;
    }
  }
  boolean isInContactWithRight(Player p) {     //check if punch is in contact with the player's left side
    if (loc.y + diam/2 <= p.loc.y + p.w && loc.y - diam/2 >= p.loc.y && loc.x - diam/2 >= p.loc.x + p.l/2 && p.loc.x + p.l >= loc.x - diam/2) {
      return true;
    } else {
      return false;
    }
  }
}