/*22. using arctangent to determine angle
The atan2() function can be used to compute 
the angle between two points, which -as you 
can imagine- may come in handy in many cases. 
Here is a code example.
*/

int x, y;

void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
  textSize(20);
  textAlign(CENTER, CENTER);
  noStroke();
  smooth();
}

void draw() {
  background(255);
  float angle = atan2(mouseY-y, mouseX-x);
  translate(x, y);
  fill(0);
  ellipse(0, 0, 100, 100);
  fill(255);
  text(int(degrees(angle)), 0, 0);
  rotate(angle);
  fill(0, 0, 255);
  ellipse(50, 0, 30, 30);
}

