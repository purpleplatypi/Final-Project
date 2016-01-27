class Health {
  PVector loc;
  float health, diam;
  color c;

  Health (float x, float y) {
    loc = new PVector(x, y);
    health = 300;
    c = color(0, 255, 0);
  }

  void display () {
    fill(c);
    rect(loc.x, loc.y, health, 10);
  }

  void update() {
    health=health-5;
  }
  void healthcolor() {
    if (health <= 200) {
      c=color(255, 255, 0);
    }
    if (health<= 100) {
      c=color(255, 0, 0);
    }
    if (health<=0) {
      mode=5;
    }
  }
}