// character selection page

// code to be added on
void setup() {
  size(1000,1000);
  x = 105;
  y = 175;
  x1 = x+130;
  y1 = y+100;
}

void draw() {
  background(0, 210, 204);
  fill(255);
  rect(x, y, x, y);
  rect(x1, y1, x, 46);
  rect(x+127, y, x, 46);
  textSize(35);
  textAlign(CENTER);
  text("CHOOSE YOUR PLAYER", 500, 100);
  text(" Sarcastic Sanservino", 196, 400);
}