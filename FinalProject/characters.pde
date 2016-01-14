  
class hitbox {
  PVector loc;
  int diam;

  hitbox(int tDiam) {
    loc = new PVector(mouseX, mouseY); //location of catacher
    diam = tDiam; //size
  }
  void display() { //displaying catcher
    fill(255);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
    
  }
  void move() {  
   loc.x = mouseX;
   loc.y = mouseY;
  }
}
  
void characters(){
 
  
}