class Level1 {
  boolean left, right, jumping;
  //PImage mariofinal, floor, background;
  float speed, x, y, jumpSpeed;
  float origJumpSpeed ;
  float gravity=1;

  Level1() {  
    x=0;
    speed=5;
    y=750;
    jumpSpeed=-15;
    origJumpSpeed=jumpSpeed;
  }
  void display() {
    rect(x, y, 30, 30);
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
      if (y > 750) {
        y = 750;
        jumpSpeed = origJumpSpeed;
        jumping = false;
        jumpSpeed = origJumpSpeed;
      }
    }
  }

  void checkKeys() {
    if (keyPressed && keyCode == LEFT) {
      left = true;
    } else {
      left = false;
    }
    if (keyPressed && keyCode == RIGHT) {
      right = true;
    } else {
      right = false;
    }
    if (keyPressed && keyCode == UP) {
      jumping =true;
    }
  }


  //void keyReleased() {

  //  if (keyCode == LEFT) {
  //    left = false;
  //  }
  //  if (keyCode == RIGHT) {
  //    right = false;
  //  }
  //}


  void restrictmario() {
    if (x - speed < -100) {
      x = x + speed;
    }
  }
}