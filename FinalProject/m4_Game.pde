void game() {
  if (mode==4) {  //game
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
    background(200);
    //image(gamebackground,0,0,1200,800);
    fill(255);
    textSize(50);
    text("Player 1", 50, 50);
    text("Player 2", 950, 50);
    a1.display(p1);
    a2.display(p2);
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
    c.display();
    punch1.display();
    punch1.update(p1);
    h1.display();
    punch2.display();
    punch2.update(p2);
    h2.display();
    if (punch1.isInContactWith(p2)) {
      p2.bounceBack = true;
    }
    if (punch2.isInContactWith(p1)) {
      p1.bounceBack = true;
    }
  }
}