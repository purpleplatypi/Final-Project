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
    p1.display();
    p1.move();
    p1.restrict();
    p1.platformControls(a);
    p1.platformControls(b);
    p2.display();
    p2.move();
    p2.restrict();
    p2.platformControls(a);
    p2.platformControls(b);
    a.display();
    b.display();
    punch1.display();
    punch1.update(p1);
    h1.display();
    h1.update(p1);
    punch2.display();
    punch2.update(p2);
    h2.display();
    h2.update(p2);
    //if (a.isInContactWith(b)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
    //  println("hit");
    //}
  }
}