class player {
  boolean left, right, jumping;
  PVector loc, vel, g;
  int l,w;
  //float speed, x, y, jumpSpeed;
  float origJumpSpeed ;
  //float gravity=1;
  //float diam, diam1, diam2, diam3, diam4;
  //float x1, x2, y2, y1;

  player(int x, int y) {  
    loc = new PVector(x, y);
    vel = new PVector(5, -15);
    g = new PVector(0, 1);
    l=30;
    w=30;
    //jumpSpeed=-15;
    origJumpSpeed=-15;
    //diam1=200;
    //diam2=5;
    //diam3=200;
    //diam4=5;
    //x1=600;
    //x2=300;
    //y1=730;
    //y2=695;
  }
  void display() {
    fill(255);
    rect(loc.x, loc.y, l, w);
  }

  void move() {

    if (left) {    // uses boolean true or false statement to move left paddle up if the left key is pressed
      loc.x = loc.x - vel.x;
    }

    if (right) {
      loc.x = loc.x + vel.x;  // uses boolean true or false statement to move right if the right key is pressed
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
  //void platforms() {
  //  rect(x1, y1, diam1, diam2);
  //  rect(x2, y2, diam3, diam4);
  //}

  void restrict() {
    if (loc.x - vel.x < 0) {
      loc.x = loc.x + vel.x;
    }
    if (loc.x+vel.x+l>width) {
      loc.x=loc.x-vel.x;
    }
    if (loc.x+l > p1.loc.x) {
      while (loc.y>p1.loc.y-w) {
        loc.y=p1.loc.y-w;
        vel.y += g.y;
        loc.y += vel.y;
        loc.y = 700;
        vel.y = origJumpSpeed;
        jumping = false;
        vel.y = origJumpSpeed;
      }
    }
  }
}