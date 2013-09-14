/*7. fast image sequence saving
If you want to save your visual output to a file you can 
use the save() or saveFrame() funtions. In addition you could
use a timestamp or frameCount to distinguish between files.
The saveFrame function automatically uses the frameCount.
When you put this function at the end of draw it will save
each frame to an image file. The bigger your output
, the more it slows down your sketch. While there is no 
magic solution, the fastest image format to save an image
sequence is… TGA. Bet you didn’t see that one coming. 
Since this is an uncompressed format it saves much faster
than for example JPG and it also provides 100% quality. 
The price you pay is the size of the output files.
Of course there are situations when even this will 
not work out and specialist software such as fraps 
is needed.

TGA is the fastest image format:  it's uncompressed
*/


float x, y, radius;

void setup() {
  size(500, 500);
  background(255);
  smooth();
}

void draw() {
  x = random(width);
  y = random(height);
  radius = random(200);
  fill(random(255));
  ellipse(x, y, radius, radius);

  saveFrame("output-####.tga"); // will save each frame with the frameCount
}

