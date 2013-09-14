void setup() {
  size(500, 500);
  noStroke();
  smooth();
}

void draw() {
  background(255);
  fill(0);
  ellipse(width/2, height/2, 300, 300);
}

void keyPressed() {
  if (key == ESC) { key = 0; println("Trapped! Muhaha! ;-)"); }
}

