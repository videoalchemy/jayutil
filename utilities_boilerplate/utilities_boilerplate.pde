/* jstephens  201806
Utilities used for just about every project
* Record frame sequences
* SNAP frames
* hide cursor
* Require project info
* Monitor Key Events
* Print Instructions to the console

Recorder utility:
  * Saves and labels sequences in timestamped directories. 
  * Allows you to start and stop saveFrame without overwriting previous sequences
  * Saves and labels snaps
 
 SETUP: Create symlink 'frames' and 'snaps' from this sketch's directory to 
 Dropbox/_SNAPS/project_name . Symlink your sketch
 
 USAGE: 
     'r'     --> Start and stop sequence recording
     'ENTER' --> snap screen
 */
 
////////////////////////////////////////////////////////////
///// eventually add these to the recorder class ///////////
boolean saveFrameIsOn = false;
boolean recordIsOn = false;
boolean cursorIsOn = true;
String directoryStartTime = (""); //timestamp to be called only once
////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////
///// GLOBALS REQUIRED BY Recorder class
String PROJ = "test_frame_location";                           // move these to Utility class
String VERSION = "prototype";                                  // move these to Utility class
String SNAP_PATH = ("snaps/");   //("../../../snaps/");        // move these to Utility class
String FRAME_PATH = ("frames/"); //("../../../frames/");       // move these to Utility class

String SNAP_FOLDER_PATH = ("snaps/");   //("../../../snaps/"); // phase these out
String FRAME_FOLDER_PATH = ("frames/"); //("../../../frames/"); // phase these out
////////////////////////////////////////////////////////////


PGraphics makePixelsClear;

Recorder recorder;

void setup() {
  background(0);
  size(640, 480, P2D);
  
  //recorder = new Recorder(PROJ, VERSION, SNAP_PATH, FRAME_PATH);
  recorder = new Recorder();

  makePixelsClear = createGraphics(width, height, P2D);
  makePixelsClear.fill(100);

  background(0);
  printInstructions();
}

void draw() {
  background(0);
  fill(255, 15);

  makePixelsClear.beginDraw();
  makePixelsClear.ellipse(mouseX, mouseY, 60, 60);
  makePixelsClear.endDraw();

  image(makePixelsClear, 0, 0);


  checkRecordFrame();

  //checks for button press
  updateControlsFromKeyboard();
}