class player {
  //declare variables
  boolean left, right, jumping, falling, facingright, bounceBack, lefthit, righthit;
  PVector loc, vel, g;
  float l, w, ground;
  float origJumpSpeed ;
  PImage pic;

  //make constructor
  player(int x, int y) {  
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
    //stroke(0);
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

  void platformControls (platform platform) {
    if (jumping && vel.y > 0 && platform.loc.x < loc.x + l && loc.x < platform.loc.x + platform.size.x && loc.y + w > platform.loc.y && loc.y + w < platform.loc.y + platform.size.y) {
      vel.add(g);
      loc.y += vel.y;
      if (loc.y > platform.loc.y - w) {
        loc.y = platform.loc.y - w;
        vel.y = origJumpSpeed;
        jumping = false;
        vel.y = origJumpSpeed;
      }
    }
    if (loc.y + w == platform.loc.y) {
      if (platform.loc.x == loc.x + l || loc.x == platform.loc.x + platform.size.x) {
        vel.y = 0;
        jumping = true;
      }
    }
  }
}