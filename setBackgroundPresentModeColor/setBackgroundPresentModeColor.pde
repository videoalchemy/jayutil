void setup() {
  size(500, 500);
  frame.setBackground(new java.awt.Color(0));
}

void draw() {
  background(frameCount % 255);
}

