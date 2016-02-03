PImage gameover;

void gameOver() {
  gameover =  loadImage("gameover.jpg");
  if (mode == 5) {
    image(gameover, 0, 0, width, height);
    textAlign(CENTER);
    textSize(200);
    fill(255, 204, 0);
    text("GAME OVER", width/2, 200);
    textSize(150);
    text("wins", width/4.5, 750);
  }
  if (h2.health <= 0) {
    fill(255, 20, 0);
    textSize(300);
    text("P1", width/4.5, 600);
  }
  if (h1.health <= 0) {
    fill(255, 204, 0);
    textSize(300);
    text("P2", width/4.5, 600);
  }
}