class Level1 {
  boolean left, right, jumping;
  //PImage mariofinal, floor, background;
  float speed, x, y, jumpSpeed;
  float origJumpSpeed ;
  float gravity=1;
  float diam, diam1, diam2, diam3, diam4;
  float x1, x2, y2, y1;

  Level1() {  
    x=0;
    speed=5;
    y=770;
    jumpSpeed=-15;
    origJumpSpeed=jumpSpeed;
    diam=30;
    diam1=200;
    diam2=5;
    diam3=200;
    diam4=5;
    x1=600;
    x2=300;
    y1=730;
    y2=695;
  }
  void display() {
    rect(x, y, diam, diam);
  }

  void move() {

    if (left) {    // uses boolean true or false statement to move left paddle up if the left key is pressed
      x = x - speed;
    }

    if (right) {
      x = x + speed;  // uses boolean true or false statement to move right if the right key is pressed
    }
    if (jumping) {
      jumpSpeed += gravity;
      y += jumpSpeed;
      if (y > 770) {
        y = 770;
        jumpSpeed = origJumpSpeed;
        jumping = false;
        jumpSpeed = origJumpSpeed;
      }
    }
  }
  void platforms() {
    rect(x1, y1, diam1, diam2);
    rect(x2, y2, diam3, diam4);
  }

  void restrict() {
    if (x - speed < 0) {
      x = x + speed;
    }
    if (x+speed+diam>width) {
      x=x-speed;
    }
    if (x+diam>x1) {
      while (y>y1-diam) {
        y=y1-diam;
        jumpSpeed += gravity;
        y += jumpSpeed;
        y = 700;
        jumpSpeed = origJumpSpeed;
        jumping = false;
        jumpSpeed = origJumpSpeed;
      }
    }
  }
}