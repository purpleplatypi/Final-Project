class health {
  PVector loc;
  float health, diam;

  health (float x, float y) {
    loc = new PVector(x,y);
    health = 200;
  }

  void display () {
    fill(0, 255, 0);
    rect(loc.x, loc.y, health, 5);
  }
  
  void update(){
    //if is in contact with then reduce health
  }
}