/*14. a simple menu and/or different screens
When you want to create a simple menu or perhaps a program 
that moves through different screens, the best way to do it 
is by using a switch. This is clearer and faster than the
alternative if-else structure in these circumstances. 
A switch will allow the user to easily move back and 
forth through different screen, for example via keyboard
or mouse input. To keep things clearly readable, 
my advise is to refer to seperate functions for each 
screen instead of putting all the code in the draw() l
oop itself. Check out the following code example.
*/



int currentScreen;

void setup() {
  size(500, 500);
  noStroke();
  smooth();
}

void draw() {
  switch(currentScreen) {
  case 0: drawScreenZero(); break;
  case 1: drawScreenOne(); break;
  case 2: drawScreenTwo(); break;
  default: background(0); break;
  }
}

void mousePressed() {
  currentScreen++;
  if (currentScreen > 2) { currentScreen = 0; }
}

void drawScreenZero() {
  background(255, 0, 0);
  fill(255);
  ellipse(100, 100, 400, 400);
}

void drawScreenOne() {
  background(0, 255, 0);
  fill(0);
  rect(250, 40, 250, 400);
}

void drawScreenTwo() {
  background(0, 0, 255);
  fill(255, 255, 0);
  triangle(150, 100, 150, 400, 450, 250);
}

