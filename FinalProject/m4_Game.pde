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
    image(school, 0,0, width, height);
    //image(gamebackground,0,0,1200,800);
    fill(255);
    textSize(50);
    text("Player 1", 50, 50);
    text("Player 2", 850, 50);
    a1.display(p1);
    a2.display(p2);
    p1.display();
    punch1.display();
    punch1.update(p1);
    p1.face();
    p1.move();
    p1.restrict();
    p1.platformControls(a);
    p1.platformControls(b);
    p1.platformControls(c);
    p1.platformControls(d);
    p1.platformControls(e);
    p1.platformControls(f);
    p1.platformControls(g);
    p2.display();
    punch2.display();
    punch2.update(p2);
    p2.face();
    p2.move();
    p2.restrict();
    p2.platformControls(a);
    p2.platformControls(b);
    p2.platformControls(c);
    p2.platformControls(d);
    p2.platformControls(e);
    p2.platformControls(f);
    p2.platformControls(g);
    a.display();
    b.display();
    c.display();
    d.display();
    e.display();
    f.display();
    g.display();
    h1.display();
    h2.display();
    h1.healthcolor();
    h2.healthcolor();
    if (punch1.punch || punch2.punch) {
      if (punch1.isInContactWith(p2)) {
        p2.bounceBack = true;
        h2.update();
      }
      if (punch2.isInContactWith(p1)) {
        p1.bounceBack = true;
        h1.update();
      }
    }
    if (p1.jumping && p1.vel.y>0 && p1.loc.y+130>p2.loc.y && p1.loc.x < p2.loc.x +50 && p1.loc.x > p2.loc.x) {
      p1.loc.y=540;
      p1.vel.y = p1.origJumpSpeed;
      p1.jumping = false;


      if (p1.loc.y==540) {
        if (p1.loc.x - 50 == p2.loc.x || p1.loc.x == p2.loc.x ) {
          p1.loc.y=p1.ground;

          p1.jumping = true;
        }
      }
    }
  }
  // if(p1.loc.x > p2.loc.x +130 && p1.loc.x > p2.loc.x +140 || p1.loc.x < p2.loc.x && p1.loc.x < p2.loc.x-10){
  //  p1.vel.y=0;
  //  p1.jumping=true;
  //  }

  //if (p1.loc.dist(p2.loc) <= p1.l + 5) {
  //  p1.vel.x = 0;
  //  p2.vel.x = 0;
  //}
}