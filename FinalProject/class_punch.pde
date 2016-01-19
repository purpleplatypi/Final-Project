class punch {
//declare variables
  PVector loc;
  int diam;
  boolean thekeyleft, thekeyright, thekeyup, thekeydown; //boolean the keys

//make constructor
  punch() {
    //location needs to be redetermined
    loc = new PVector();     //location of hitbox
    diam = 10;     //size
  }

  void display() { //displaying hitbox
    fill(255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  
  void update(player player){
    loc.set(player.loc.x + player.l  - diam/2, player.loc.y + player.w/2);
  }

  //void move() {
  //  if (thekeyleft) {     //if the key for to move left is showing true, move left. 
  //    loc.x = loc.x-.1;
  //    println("moveleft");     //printing moveleft to check
  //  }
  //  if (thekeyright) {     //if the key for to move right is showing true, move right.  
  //    loc.x = loc.x+.1;
  //    println("moveright");
  //  }
  //  if (thekeyup) {     //if the key for to move up is showing true, move up. 
  //    loc.y = loc.y-.1;
  //    println("moveup");
  //  }
  //  if (thekeydown) {     //if the key for to move down is showing true, move down. 
  //    loc.y = loc.y+.1;
  //    println("movedown");
  //  }
  //}
}