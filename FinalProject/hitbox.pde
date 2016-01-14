class hitbox {
  PVector loc;
  int diam;
   int health= 300;
  boolean thekeyleft,thekeyright,thekeyup,thekeydown; //boolean the keys

  Catcher(int tDiam) {

    loc = new PVector(random (width), random(height)); //location of catacher
    diam = tDiam; //size
    loc.x= width/2; //starting loc
    loc.y=height/2;
  }
  void display() { //displaying catcher
    fill(255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
    rect(loc.x, loc.y + diam*1.05, health, 5); 
  }
  
  void move() {
    if(thekeyleft) { //if the key for to move left is showing true, move left. 
      loc.x = loc.x-.1;
      println("moveleft"); //printing moveleft to check 
    }
    if (thekeyright) { //if the key for to move right is showing true, move right.  
      loc.x = loc.x+.1;
      println("moveright");
    }
    if (thekeyup) { //if the key for to move up is showing true, move up. 
      loc.y = loc.y-.1;
      println("moveup");
    }
    if (thekeydown) { //if the key for to move down is showing true, move down. 
      loc.y = loc.y+.1;
      println("movedown");
    }
  }
  void health() {
   
     boolean isInContactWith (Catcher thing) { 
    if (thing.loc.dist(loc) < thing.diam/2+diam) { //if the distace between hitbox and (whatever it hitting hitbox) is the less than or equal to diam

      heath = heath -1; //reduce health bar
      println("hit"); //print hit
      return true;
    } else {
      return false;
      //}
    }
  }
  
}
 