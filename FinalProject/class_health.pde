class Health {
  PVector loc;
  float health, diam;
  color c;

  //make a constructor
  Health (float x, float y) {
    loc = new PVector(x, y);
    health = 300;
    c = color(0, 255, 0);
  }

  //write methods
  void display () {
    //draw the health bar
    fill(c);
    rect(loc.x, loc.y, health, 10);
  }
  void update() {
    //reduce the health if this method is called
    health=health-5;
  }
  void healthcolor() {
    //change the color of the health as it gets lower
    if (health <= 200) {
      c=color(255, 255, 0);
    }
    if (health<= 100) {
      c=color(255, 0, 0);
    }
    if (health<=0) {    //if the health goes below 0 go to game over page
      mode=5;
    }
  }
}