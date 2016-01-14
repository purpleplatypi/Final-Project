void game() {
  if (mode==5) {
    /**************
    display players
    if keypressed
      move players
    if other keypressed
       send hitboxes
    if hitbox hits
      health reduced
    if on top of platforms
      land on it
    ******************/
    l1.display();
    l1.checkKeys();
    l1.move();
  }
}