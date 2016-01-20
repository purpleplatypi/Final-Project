class player {
  //declare variables
  boolean left, right, jumping, falling, facingright;
  PVector loc, vel, g;
  float l, w, ground;
  float origJumpSpeed ;
  color c;



  //make constructor
  player(int x, int y) {  
    loc = new PVector(x, y);
    vel = new PVector(5, -15);
    g = new PVector(0, 1);
    ground = 770;
    l=30;
    w=30;
    origJumpSpeed=-15;
    c = color(0, 0, 0);
  }

  //write methods


  void display() {
    fill(c);

    rectMode(CORNER);
    rect(loc.x, loc.y, l, w);
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
  }

  //boolean isInContactWith(punch thing) { 
  //  if (thing.loc.y + thing.diam <= loc.y + w && thing.loc.y >= loc.y && thing.loc.x + thing.diam >= loc.x && loc.x + l >= thing.loc.x) { //if the distace between hitbox and (whatever it hitting hitbox) is the less than or equal to diam
  //    return true;
  //  } else {
  //    return false;
  //  }
  //}

  void restrict() {
    if (loc.x - vel.x < 0) {
      loc.x += vel.x;
    }
    if (loc.x + vel.x + l > width) {
      loc.x -= vel.x;
    }
  }

  void platformControls (platform platform) {
    if (jumping && vel.y > 0 && platform.loc.x < loc.x + l && loc.x  < platform.loc.x + platform.size.x && loc.y + w > platform.loc.y && loc.y + w < platform.loc.y + platform.size.y) {
      vel.add(g);
      loc.y += vel.y;
      if ( loc.y > platform.loc.y - w) {
        loc.y= platform.loc.y - w;
       // ground= platform.loc.y - w;
        vel.y = origJumpSpeed;
        jumping = false;
        vel.y = origJumpSpeed;
      }
    }
    if (loc.y + w == platform.loc.y) {
      if (platform.loc.x - 5 == loc.x + l || loc.x == platform.loc.x + platform.size.x + 5) {
        vel.y = 0;
        
        jumping = true;
      }
    }
  }
}