/* jstephens  201806
Utilities used for just about every project
* Record frame sequences
* SNAP frames
* hide cursor
* Require project info
* Monitor Key Events
* Print Instructions to the console


 */
////////////////////////////////////////////////////////////
///// utilities ///////////
Recorder recorder;

////////////////////////////////////////////////////////////
///// eventually add these to the util class ///////////
boolean cursorIsOn = true;
////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////
///// GLOBALS REQUIRED BY Recorder class
String PROJ       = "test_frame_location";                        
String VERSION    = "prototype";                                  
String SNAP_PATH  = ("./snaps/");   //("../../../snaps/");        
String FRAME_PATH = ("./frames/"); //("../../../frames/");     
////////////////////////////////////////////////////////////

PGraphics makePixelsClear;

void setup() {
  background(0);
  size(640, 480, P2D);
  
  recorder = new Recorder();
  printInstructions();

  makePixelsClear = createGraphics(width, height, P2D);
  makePixelsClear.fill(100);
}

void draw() {
  background(0);
  fill(255, 15);

  ///////////////////////////////////
  // util
  // Start/stop recording frames if 'r'
  recorder.ready();
  // Check for button presses
  updateControlsFromKeyboard();


  makePixelsClear.beginDraw();
  makePixelsClear.ellipse(mouseX, mouseY, 60, 60);
  makePixelsClear.endDraw();
  image(makePixelsClear, 0, 0);
}
