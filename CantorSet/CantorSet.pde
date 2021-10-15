void cantor(float x, float y, float len) {
  rectMode(CENTER);
  noStroke();
  fill(0);
  rect(x, y, len, 4);

  if (len >= 0.01) {
    cantor(x - len / 3, y + 8, len / 3);
    cantor(x + len / 3, y + 8, len / 3);
  }
}

void setup() {
  size(800, 400);
  cantor(width/2, height * 0.4, width);
}
