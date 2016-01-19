class health {
  PVector loc;
  float health, diam;
  
  health () {
    loc = new PVector();
    health = 300;
  }

  void display () {
    fill(255);
    rect(loc.x, loc.y, health, 5);
  }
  
  void update(player health){
    loc.set(health.loc.x, health.loc.y - 100);
  }
}