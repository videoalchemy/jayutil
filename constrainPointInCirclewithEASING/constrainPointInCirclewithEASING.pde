/*23. constraining a point within a circle
There are always more ways than one to do something. 
I wanted to show a bit of vector math. Because once 
you start to use more mathematical operations, 
it pays off to learn about vectors. 
Either the basic PVector class that comes with 
Processing or if you wanna get serious (or lazy) 
the more elaborate Vec2D/Vec3D classes of Toxiclibs. 
The example below was an answer to specific question 
on the forum, how to constrain a point within a circle? 
As mentioned, there are multiple ways to do it, but using 
vectors makes it pretty easy. Check it out.
*/



float x, y;
float easing = 0.05;
PVector circle = new PVector(250, 250);
int diameter = 300;
 
void setup() {
  size(500, 500);
  x = y = width/2;
  noStroke();
  smooth();
}
 
void draw () {
  background(51);
  fill(255);
  ellipse(circle.x, circle.y, diameter, diameter);
 
  PVector m = new PVector(mouseX, mouseY);
  if (dist(m.x, m.y, circle.x, circle.y) > diameter/2) {
    m.sub(circle);
    m.normalize();
    m.mult(diameter/2);
    m.add(circle);
  }

  fill(0, 0, 255);
  ellipse(m.x, m.y, 6, 6);
 
  x = x + (m.x - x) * easing;
  y = y + (m.y - y) * easing;
 
  fill(255, 0, 0);  
  ellipse(x, y, 24, 24);
}

