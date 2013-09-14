//polar cordinate function
//PVector center;
//PVector currentLoc;  //this may be closest Point
//PVector previousLoc;// likely w/2, h/2 (if center of table)


void setup () {
  size (500, 500);
  //PVector center = new PVector (width/2, height/2);
  //previousLoc = new PVector (width/2, height/2);
}

void draw () {

  PVector currentMouse = new PVector (mouseX, mouseY);
  PVector center = new PVector (width/2, height/2);

  //calculate the Vector of Direction between 2 points and return a PVector dir
  PVector dir = CalcDirVectorFromCurrentToPrevious (currentMouse, center); //calls for a return

  //now pass the dir and center to calibration screen?
  drawCenterTableVectorTool(dir, center);
}

//return function
PVector CalcDirVectorFromCurrentToPrevious (PVector currentLoc, PVector previousLoc) {
  PVector dir = PVector.sub(currentLoc, previousLoc); // currentLoc.sub(previousLoc); */
  return dir;
}

void drawCenterTableVectorTool(PVector dir, PVector center) {
  float m = dir.mag();
  pushMatrix();
  translate (center.x, center.y);
  line (0, 0, dir.x, dir.y);
  rectMode(RADIUS);
  ellipse(0, 0, 2*m, 2*m);
  line (0, 0, dir.x, dir.y);
  rectMode(CORNER);
  popMatrix();
}

