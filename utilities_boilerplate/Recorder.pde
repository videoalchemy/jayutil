// Recorder helper class
class Recorder {


  boolean saveFrameIsOn = false;
  boolean recordIsOn = false;
  boolean cursorIsOn = true;

  ////////////////////////////////////////////////////////////
  ///// GLOBALS REQUIRED BY Recorder class
  String PROJ = "test_frame_location";
  String VERSION = "prototype";
  String SNAP_PATH = ("snaps/");   //("../../../snaps/");
  String FRAME_PATH = ("frames/"); //("../../../frames/");

  String directoryStartTime = (""); //timestamp to be called only once


  Recorder (String proj, String version, String snapPath, String framePath) {

    //verify class
    println(snapPath, framePath, proj, version);
  }

  Recorder () {
    println ("Recorder needs a path to snaps and frames"); 


    textSize(32);
    fill(0);
    text("Recorder needs a path to snaps and frames", width/2, height/3); 
    fill(255);
    text("Recorder needs a path to snaps and frames", width/2, height/2);
  }
}