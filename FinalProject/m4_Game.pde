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
    background(gamebackground);
    //file.play();
    fill(255);
    textSize(50);
    text("Player 1", 200, 50);
    text("Player 2", 1000, 50);
    a1.display(p1);
    a2.display(p2);
    p1.display();
    punch1.display();
    punch1.update(p1);
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
    p1.face();
    p2.face();
    if (punch1.punch || punch2.punch) {
      if (punch1.isInContactWithLeft(p2)) {
        p2.lefthit = true;
        p2.bounceBack = true;
        h2.update();
      }
      if (punch1.isInContactWithRight(p2)) {
        p2.righthit = true;
        p2.bounceBack = true;
        h2.update();
      }
      if (punch2.isInContactWithLeft(p1)) {
        p1.lefthit = true;
        p1.bounceBack = true;
        h1.update();
      }
      if (punch2.isInContactWithRight(p1)) {
        p1.righthit = true;
        p1.bounceBack = true;
        h1.update();
      }
    }
    if (p1.loc.dist(p2.loc) <= p1.l + 5) {
      if (p1.facingright) {
        if (!p2.facingright&&p1.loc.x < p2.loc.x) {
          p1.loc.x -= p1.vel.x;
          p2.loc.x += p2.vel.x;
        }
        if (p2.facingright) {
          if (p1.loc.x < p2.loc.x) {
            p1.loc.x -= p1.vel.x;
          } else if (p1.loc.x > p2.loc.x) {
            p2.loc.x -= p2.vel.x;
          }
        }
      }
      if (!p1.facingright) {
        if (!p2.facingright) {
          if (p1.loc.x < p2.loc.x) {
            p2.loc.x += p2.vel.x;
          } else if (p1.loc.x > p2.loc.x) {
            p1.loc.x += p2.vel.x;
          }
        }
        if (p2.facingright&& p1.loc.x > p2.loc.x) {
          p1.loc.x += p1.vel.x;
          p2.loc.x -= p2.vel.x;
        }
      }
    }
    if (p1.jumping && p1.vel.y > 0 && p1.loc.x + p1.l/2 >= p2.loc.x && p1.loc.x + p1.l/2 <= p2.loc.x + p2.l && p1.loc.y + p1.w >= p2.loc.y && p1.loc.y + p1.w < p2.loc.y + p2.w) {
      p1.vel.add(p1.g);
      p1.loc.y += p1.vel.y;
      if (p1.loc.y >= p2.loc.y - p1.w) {
        p1.loc.y = p2.loc.y - p1.w;
        p1.vel.y = p1.origJumpSpeed;
        p1.jumping = false;
        p1.vel.y = p1.origJumpSpeed;
      }
    }
    if (p1.loc.y + p1.w == p2.loc.y) {
      if (p2.loc.x == p1.loc.x + p1.l || p1.loc.x == p2.loc.x + p2.l) {
        p1.vel.y = 0;
        p1.jumping = true;
      }
    }
    if (p2.jumping && p2.vel.y > 0 && p2.loc.x + p2.l/2 >= p1.loc.x && p2.loc.x + p2.l/2 <= p1.loc.x + p1.l && p2.loc.y + p2.w >= p1.loc.y && p2.loc.y + p2.w < p1.loc.y + p1.w) {
      p2.vel.add(p2.g);
      p2.loc.y += p2.vel.y;
      if (p2.loc.y >= p1.loc.y - p2.w) {
        p2.loc.y = p1.loc.y - p2.w;
        p2.vel.y = p2.origJumpSpeed;
        p2.jumping = false;
        p2.vel.y = p2.origJumpSpeed;
      }
    }
    if (p2.loc.y + p2.w == p1.loc.y) {
      if (p1.loc.x == p2.loc.x + p2.l || p2.loc.x == p1.loc.x + p1.l) {
        p2.vel.y = 0;
        p2.jumping = true;
      }
    }
  }
}