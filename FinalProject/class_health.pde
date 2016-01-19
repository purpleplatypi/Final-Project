class health {
  PVector loc;
  float health, diam;
  
  health () {
    loc = new PVector();
    health = 100;
  }

  void display () {
    fill(0,255,0);
    rect(loc.x, loc.y, health, 5);
  }
  
  void update(player player){
    loc.set(player.loc.x, player.loc.y - 10);
  }
}