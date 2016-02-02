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
    //draw the hitbox but don't show it
    noFill();
    noStroke();
    rectMode(CORNER);
    rect(loc.x, loc.y, l, w);
  }

  void face() {
    //draw the face image on the player
    tint(255,255);
    image(pic, loc.x + 5, loc.y -10, 50, 50);
  }

  void move() {
    if (left) {        // uses boolean true or false statement to move player left if the left key is pressed
      loc.x -= vel.x;
      facingright = false;    //used to determine which way the character is facing
    }
    if (right) {
      loc.x += vel.x;  // uses boolean true or false statement to move player right if the right key is pressed
      facingright = true;
    }
    if (jumping) {
      //add gravity to the velocity that is added to the y location which makes it seem as if the player jumped up
      vel.add(g);
      loc.y += vel.y;
      if (loc.y > ground) {    //make sure the player doesn't end up below the ground
        loc.y = ground;
        vel.y = origJumpSpeed;
        jumping = false;
        vel.y = origJumpSpeed;
      }
    }
    if (bounceBack) {     //bounces back when hit
      if (righthit ) {
        loc.x -= vel.x;
      } else if (lefthit) {
        loc.x += vel.x;
      }
      bounceBack = false;
    }
  }

  void restrict() {    //don't let the players accelerate off the screen too much
    if (loc.x - vel.x < 0) {
      loc.x += vel.x;
    }
    if (loc.x + vel.x + l > width) {
      loc.x -= vel.x;
    }
  }

  void platformControls (Platform pl) {    //interact with platform class
    if (jumping && vel.y > 0 && pl.loc.x < loc.x + l && loc.x < pl.loc.x + pl.size.x && loc.y + w > pl.loc.y && loc.y + w < pl.loc.y + pl.size.y) {
      //if it is within the area of the platform, land on the platform
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
        //if no longer on the platform, fall off
        vel.y = 0;
        jumping = true;
      }
    }
  }
}