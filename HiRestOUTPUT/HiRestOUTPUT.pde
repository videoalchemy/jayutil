//import processing.opengl.*;

void setup() {
  size(500, 500, JAVA2D);
}

void draw() {
  background(255);
  smooth();
  strokeWeight(10);
  fill(255, 0, 0);
  ellipse(width/2, height/2, 200, 200);
}

void keyPressed() {
  if (key == 's') {
    save("normal.png");
    saveHiRes(5);
    exit();
  }
}

void saveHiRes(int scaleFactor) {
  PGraphics hires = createGraphics(width*scaleFactor, height*scaleFactor, JAVA2D);
  beginRecord(hires);
  hires.scale(scaleFactor);
  draw();
  endRecord();
  hires.save("hires.png");
}

