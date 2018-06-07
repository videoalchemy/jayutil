////////////////////////////////////
// UTILITY FUNCTIONS
////////////////////////////////////

//////////////////////////////////////////////////
//  TOGGLE CURSOR  =  'c'
void toggleCursor () {
  cursorIsOn = !cursorIsOn;    
  println("*** Cursor is " + cursorIsOn + " ***");
  if (cursorIsOn) {
    cursor();
  } else {
    noCursor();
  }
}
//  END: TOGGLE CURSOR
//////////////////////////////////////////////////

//////////////////////////////////////////////////
//  TOGGLE RECORDING  =  'r'
void toggleRecording () {
  directoryStartTime = frameAsString();
  recordIsOn = !recordIsOn;
  println("TOGGLE RECORDING!");
  println("*** Recording = " + recordIsOn + " ***");
  println ("directory by StartTime: " + PROJ + "/" + directoryStartTime);
}
//  END: TOGGLE RECORDING
//////////////////////////////////////////////////

//////////////////////////////////////////////////
//  RECORD FRAMES  =  'r'
void checkRecordFrame() {
  if (recordIsOn) {
    saveFrame(FRAME_FOLDER_PATH + directoryStartTime + "#####.tif");
  }
}
//  END: RECORD FRAMES
//////////////////////////////////////////////////

//////////////////////////////////////////////////
//  MAKE PIXELS CLEAR FOR PGRAPHIC  =  'TAB'
void makePixelsClearAgain(PGraphics p) {
    println("hidden function?");
    //background(0);
    p.beginDraw();
    p.clear();
    p.endDraw();
}
//  END: MAKE PIXELS CLEAR
//////////////////////////////////////////////////



////////////////////////////////////////
//   PROVIDE SOME POINTERS
void printInstructions() {
  println("");
  println("                 Keyboard controls");
    println("          -----------------------------------");
     println("   ENTER  takes a snapshot and saves it to "+SNAP_FOLDER_PATH);
     println("   TAB     clears pgraphic background to transparent");
     println("   'r'     toggle screen recording");
     println("   'c'     toggle cursor");
     println("   'q'     momentary switch, stays engaged until released");
     println("   'w'     momentary switch, stays engaged until released");
     println("   '-'     ");

     println("          -----------------------------------");
     println("");
}

void mousePressed() {
  //saveFrameIsOn = !saveFrameIsOn;
}