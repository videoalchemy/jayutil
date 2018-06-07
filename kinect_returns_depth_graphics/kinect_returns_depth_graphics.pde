/* jstephens  201806
Kinect setup with Kinecter helper class
Extracts a depth image from the depthArray
      - Maps greyscale
      - Returns a PImage from getRawDepthImage()            
Adjusts minDepth ('a', 's') and maxDepth ('z', 'x') 
From Shiffman and Zananiri examples
*/

import org.openkinect.freenect.*;
import org.openkinect.processing.*;

// Kinect helper
Kinecter kinect;

void setup() {
 size(1280, 480, P2D);
 
 kinect = new Kinecter(this);
  
}

void draw() {
  
 // Draw the Generic depth image
 kinect.drawDepthImage(); 
 
 // Draw the greyscale image that's based on the depthArray
 image(kinect.getRawDepthImage(), 640, 0);
 
 // Show the calibration info (angle and distance)
 kinect.displayDistanceAndAngle();
}