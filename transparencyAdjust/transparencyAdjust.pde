PImage img;

void setup() {
  size(500, 500);
  img = loadImage("input.jpg");
}

void draw() {
  background(255);
  tint(255, 125);
  image(img, mouseX, mouseY);
}

