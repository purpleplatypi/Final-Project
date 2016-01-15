class player {
  //declare variables
  boolean left, right, jumping;
  PVector loc, vel, g;
  int l, w;
  float origJumpSpeed ;

  //make constructor
  player(int x, int y) {  
    loc = new PVector(x, y);
    vel = new PVector(5, -15);
    g = new PVector(0, 1);
    l=30;
    w=30;
    origJumpSpeed=-15;
  }

  //write methods

  void display() {
    fill(255);
    rect(loc.x, loc.y, l, w);
  }

  void move() {
    if (left) {    // uses boolean true or false statement to move left paddle up if the left key is pressed
      loc.x -= vel.x;
    }
    if (right) {
      loc.x += vel.x;  // uses boolean true or false statement to move right if the right key is pressed
    }
    if (jumping) {
      vel.add(g);
      loc.y += vel.y;
      if (loc.y > 770) {
        loc.y = 770;
        vel.y = origJumpSpeed;
        jumping = false;
        vel.y = origJumpSpeed;
      }
    }
  }

  void restrict() {
    if (loc.x - vel.x < 0) {
      loc.x = loc.x + vel.x;
    }
    if (loc.x + vel.x + l > width) {
      loc.x=loc.x-vel.x;
    }
  }

  void p1controls() {
    if (loc.y + w <= p1.loc.y) {
      if (p1.loc.x < loc.x && loc.x + l < p1.loc.x + p1.size.x) {
        vel.y += g.y;
        loc.y += vel.y;
        loc.y = p1.loc.y - w;
        jumping = false;
        vel.y = origJumpSpeed;
      } else if (loc.y == p1.loc.y-w) {
        vel.y = origJumpSpeed;
      }
    }
  }
}