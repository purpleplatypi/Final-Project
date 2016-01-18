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
    background(0);
    a.display();
    a.move();
    a.restrict();
    a.platformControls(p1);
    a.platformControls(p2);
    p1.display();
    p2.display();
    b.display();
    if (a.isInContactWith(b)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      println("hit");
    }
  }
}