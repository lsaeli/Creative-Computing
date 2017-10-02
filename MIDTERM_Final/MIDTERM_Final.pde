Animation animation1;

float xpos;
float ypos;

PImage img;

//sound
import processing.sound.*;
SoundFile file;

//import font
boolean onPressed, showInstruction;
PFont f;


void setup() {
  size(1440, 1100);
  background(4, 7, 12); 

  img=loadImage("space_tree01.jpg");

  file = new SoundFile(this, "midterm_music.wav");
  file.loop();
  file.rate(.60);
  println("SFDuration= " + file.duration() + " seconds");
  println("SFSamples= " + file.frames() + " samples");

  smooth();
  framerate(60);
  animation1 = new Animation("space_tree", 132);
  ypos = height * 0.25;

  f = createFont("cochin", 24, true);
  textAlign(RIGHT);
  textFont(f);
  textSize(24);
  text("Stars sway and shatter on the Midnight Moon\ntheir trails scintillate, shaken by eternal winds." 
    , width*0.9, height*0.5+85);
  //width: 0.1=closer to left. height: 0.1=closer to top
}      

void mousePressed() {
  onPressed = true;
  if (showInstruction) {
    showInstruction = false;
  }
}

void mouseReleased() {
  onPressed = false;
}


void draw() {

  image(img, 0, 0, width, height-230);

  //text
  fill(255, 253, 216);
  textAlign(RIGHT);
  textFont(f);
  textSize(24);
  text("Stars sway and shatter on the Midnight Moon\ntheir trails scintillate, shaken by eternal winds." 
    , width*0.9, height*0.5+85);
  //width: 0.1=closer to left. height: 0.1=closer to top
}

class Animation {
  PImage[] image;
  int imageCount;
  int frame;

  Animation(String imagePrefix, int count) {
    imageCount = count;
    image = new PImage[imageCount];

    for (int i = 0; i < imageCount; i++) {
      String filename = imagePrefix + nf(i, 2) + ".jpg";
      image[i] = loadImage(filename);
    }
  }
}