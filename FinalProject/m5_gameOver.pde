PImage gameover;

void gameOver() {
<<<<<<< HEAD
  gameover =  loadImage("gameover.jpg");

  if (mode == 5) {
    image(gameover, 0, 0, width, height);
    textAlign(CENTER);
    textSize(200);
    fill(255, 204, 0);
=======
    gameover =  loadImage("gameover.jpg");
    
  if (mode == 5) {
 image(gameover, 0,  0, width, height);
    textAlign(CENTER);
>>>>>>> refs/remotes/origin/development
    text("GAME OVER", width/2, height/2);
    textSize(150);
    fill(255, 204, 0);
  }
   if (h2.health <= 0) {
     fill(255, 20, 0);
    textSize(50);
    text("PLAYER 1 WINS!", 600, 600);
  }
   if(h1.health <= 0) {
     fill(255, 204, 0);
    textSize(50);
    text("PLAYER 2 WINS!" , 600, 600);
  }
  if (h2.health <= 0) {
    fill(255, 20, 0);
    textSize(150);
    text("PLAYER 1 WINS!", 600, 600);
  }
  if (h1.health <= 0) {
    fill(255, 204, 0);
    textSize(150);
    text("PLAYER 2 WINS!", 600, 600);
  }
}