void game() {
  // if (mode==5) {
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
  a.display();
  a.move();
  a.restrict();
  a.platformControls(p1);
  p1.display();
  p2.display();
}