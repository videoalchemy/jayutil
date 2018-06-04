////////////////////////////////////////////////////////////
//  Kinect setup (constant for all configs)
////////////////////////////////////////////////////////////

// size of the kinect image



class Kinecter  {
  Kinect kinect;
  boolean isKinected = false;

  float kinectAngle;

  int thresholdRange = 2047;

  //depthImage = new PImage(this.width, this.height);

  public Kinecter(PApplet parent) {
    //super();
    try {
      kinect = new Kinect(parent);
      kinect.initDepth();
      kinectAngle=kinect.getTilt();

      // the below makes getRawDepth() faster
      //kinect.processDepthImage(false);

      isKinected = true;
      println("KINECT IS INIITIALIZED");
    }
    catch (Throwable t) {
      isKinected = false; 
      println("KINECT NOT INIITIALIZED");
      println(t);
    }
  }

  void drawDepthImage() {
    image(kinect.getDepthImage(), 0, 0);
  }
}
