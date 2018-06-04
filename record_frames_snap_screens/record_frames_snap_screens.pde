/* jstephens  201806
 Saves and labels sequences in timestamped directories. 
 - Allows you to start and stop saveFrame without overwriting previous sequences
 Saves and labels snaps
 
 SETUP: Create symlink 'frames' and 'snaps' from this sketch's directory to 
 Dropbox/_SNAPS/project_name . ymlink your sketch
 
 USAGE: 'r' --> Start and stop sequence recording
 'ENTER' --> snap screen
 */

PGraphics makePixelsClear;

boolean saveFrameIsOn = false;
boolean recordIsOn = false;
boolean cursorIsOn = true;

//String SNAP_FOLDER_PATH = ("../../../snaps/");
//String FRAME_FOLDER_PATH = ("../../../frames/");

String SNAP_FOLDER_PATH = ("snaps/");
String FRAME_FOLDER_PATH = ("frames/");

String directoryStartTime = (""); //timestamp to be called only once
String project = "test_frame_location";
String version = "prototype";


void setup() {
  background(0);
  size(640, 480, P2D);

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
  
  image(makePixelsClear, 0,0);

  
  checkRecordFrame();

  // checks for button press
  updateControlsFromKeyboard();
}
