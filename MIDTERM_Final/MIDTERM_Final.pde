import processing.sound.SoundFile;
SoundFile file;

PImage img;

PFont f;

void setup() {
  size(1440, 1100);

  //preloads tree
  img = loadImage("background.gif");
  image(img, 0, 0);

  file = new SoundFile(this, "midterm_music.wav");
  file.loop();
  f = createFont("cochin", 24, true);
}

//adds image
void draw() {
  image(img, 0, 0, 1440, 900);


  //text
  fill(255, 253, 216);
  textAlign(RIGHT);
  textFont(f);
  textSize(24);
  text("Stars sway and shatter on the Midnight Moon\ntheir trails scintillate, shaken by eternal winds." 
    , width*0.9, height*0.5+85);
  //width: 0.1=closer to left. height: 0.1=closer to top
}

void mousePressed() {
  loop();
}