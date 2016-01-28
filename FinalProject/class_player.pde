class Player {
  //declare variables
  boolean left, right, jumping, falling, facingright, bounceBack, lefthit, righthit;
  PVector loc, vel, g;
  float l, w, ground;
  float origJumpSpeed ;
  PImage pic;

  //make constructor
  Player(int x, int y) {  
    loc = new PVector(x, y);
    vel = new PVector(5, -20);
    g = new PVector(0, 1);
    l=70;
    w=130;
    ground = height - w;
    origJumpSpeed=-20;
  }

  //write methods
  void display() {
    noFill();
    rectMode(CORNER);
    rect(loc.x, loc.y, l, w);
  }

  void face() {
    image(pic, loc.x + 5, loc.y -10, 50, 50);
  }

  void move() {
    if (left) {    // uses boolean true or false statement to move left paddle up if the left key is pressed
      loc.x -= vel.x;
      facingright = false;
    }
    if (right) {
      loc.x += vel.x;  // uses boolean true or false statement to move right if the right key is pressed
      facingright = true;
    }
    if (jumping) {
      vel.add(g);
      loc.y += vel.y;
      if (loc.y > ground) {
        loc.y = ground;
        vel.y = origJumpSpeed;
        jumping = false;
        vel.y = origJumpSpeed;
      }
    }
    if (bounceBack) {
      if (righthit ) {
        loc.x -= vel.x;
      } else if (lefthit) {
        loc.x += vel.x;
      }
      bounceBack = false;
    }
  }

  void restrict() {
    if (loc.x - vel.x < 0) {
      loc.x += vel.x;
    }
    if (loc.x + vel.x + l > width) {
      loc.x -= vel.x;
    }
  }

  void platformControls (Platform pl) {
    if (jumping && vel.y > 0 && pl.loc.x < loc.x + l && loc.x < pl.loc.x + pl.size.x && loc.y + w > pl.loc.y && loc.y + w < pl.loc.y + pl.size.y) {
      vel.add(g);
      loc.y += vel.y;
      if (loc.y > pl.loc.y - w) {
        loc.y = pl.loc.y - w;
        vel.y = origJumpSpeed;
        jumping = false;
        vel.y = origJumpSpeed;
      }
    }
    if (loc.y + w == pl.loc.y) {
      if (pl.loc.x == loc.x + l || loc.x == pl.loc.x + pl.size.x) {
        vel.y = 0;
        jumping = true;
      }
    }
  }
}