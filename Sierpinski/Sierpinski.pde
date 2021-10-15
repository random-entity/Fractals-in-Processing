void drawCircle(float x, float y, float d) {
  ellipse(x, y, d, d);
  if (d > 4) {
    drawCircle(x - d/2, y, d/2);
    drawCircle(x + d/2, y, d/2);
    drawCircle(x, y - d/2, d/2);
    //drawCircle(x, y + d/2, d/2);
  }
}

void drawLine(float x, float y, float d) {
  line(x, y, x, y - d);
  if (d > 2) {
    drawLine(x - d/2, y, d/2);
    drawLine(x + d/2, y, d/2);
    drawLine(x, y - d/2, d/2);
    //drawLine(x, y + d/2, d/2);
  }
}

void setup() {
  size(800, 800);
  noFill();
  drawCircle(width/2, height, height/2);
  drawLine(width/2, height/2, height/2);
}
