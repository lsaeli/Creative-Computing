Animation animation1;

import processing.sound.*;
SoundFile file;

PFont f;

PImage img;

//strings
String[] words;
int index;
int[] data;

void setup() {
  size(1440, 1100);
  background(0);
  img = loadImage("space_tree0000.jpg");
  file = new SoundFile(this, "midterm_music.wav");
  file.loop();  
  file.rate(.678);

  f = createFont("cochin", 24, true);
  textAlign(RIGHT);
  textFont(f);
  textSize(24);
  text("Stars sway and shatter on the Midnight Moon\ntheir trails scintillate, shaken by eternal winds." 
    , width*0.9, height*0.5+85);
  //width: 0.1=closer to left. height: 0.1=closer to top

  frameRate(30);
  animation1 = new Animation("space_tree", 66);
  
  
  String[] lines = loadStrings("poem.txt");
  String entireplay = join(lines, "");
  println(entireplay);
  println("there are " + lines.length + " lines");
  for (int i = 0; i < lines.length; i++) {
    println(lines[i]);
  }
}      


void draw() {
  image(img, 0, 0, 1440, 860);

fill(255, 251, 191);
  textAlign(RIGHT);
  textFont(f);
  textSize(24);
  text("Stars sway and shatter on the Midnight Moon\ntheir trails scintillate, shaken by eternal winds." 
    , width*0.9, height*0.5+85);
  //width: 0.1=closer to left. height: 0.1=closer to top
  //}
  // animation1.display (x, y);
}


class Animation {
  PImage[] image;
  int imageCount;
  int frame;

  Animation(String imagePrefix, int count) {
    imageCount = count;
    image = new PImage[imageCount];

    for (int i = 0; i < imageCount; i++) {
      String filename = imagePrefix + nf(i, 4) + ".jpg";
      image[i] = loadImage(filename);
    }
  }
}


//Animation animation1;

//PImage img;

////sound
//import processing.sound.*;
//SoundFile file;

////import font
//PFont f;


//void setup() {
//  size(1440, 1100);
//  background(4, 7, 12); 
//  //speed of music

//  smooth();
//  frameRate(30);
//  animation1 = new Animation("space_tree", 66);
//  ypos = height * 0.25;

//  f = createFont("cochin", 24, true);
//  textAlign(RIGHT);
//  textFont(f);
//  textSize(24);
//  text("Stars sway and shatter on the Midnight Moon\ntheir trails scintillate, shaken by eternal winds." 
//    , width*0.9, height*0.5+85);
//  //width: 0.1=closer to left. height: 0.1=closer to top

//  file = new SoundFile(this, "midterm_music.wav");
//  file.loop();      
//  file.rate(.6);
//  println("SFDuration= " + file.duration() + " seconds");
//  println("SFSamples= " + file.frames() + " samples");
//}      

//void draw() {

//  //text
//  fill(255, 253, 216);
//  textAlign(RIGHT);
//  textFont(f);
//  textSize(24);
//  text("Stars sway and shatter on the Midnight Moon\ntheir trails scintillate, shaken by eternal winds." 
//    , width*0.9, height*0.5+85);
//  //width: 0.1=closer to left. height: 0.1=closer to top
//}

//class Animation {
//  PImage[] image;
//  int imageCount;
//  int frame;

//  Animation(String imagePrefix, int count) {
//    imageCount = count;
//    image = new PImage[imageCount];

//    for (int i = 0; i < imageCount; i++) {
//      String filename = imagePrefix + nf(i, 4) + ".jpg";
//      image[i] = loadImage(filename);
//    }
//  }
//}





//Animation animation1;

//PImage img;

////sound
//import processing.sound.*;
//SoundFile file;

////import font
//PFont f;

////strings
//String[] words;
//int index;
//int[] data;

//void setup() {
//  size(1440, 1100);
//  background(4, 7, 12); 

//  file = new SoundFile(this, "midterm_music.wav");
//  file.loop();
//  file.rate(.60);
//  println("SFDuration= " + file.duration() + " seconds");
//  println("SFSamples= " + file.frames() + " samples");

//  smooth();
//  frameRate(60);
//  animation1 = new Animation("space_tree", 66);

//  f = createFont("cochin", 24, true);
//  textAlign(RIGHT);
//  textFont(f);
//  textSize(24);
//  //width: 0.1=closer to left. height: 0.1=closer to top

//  String[] lines = loadStrings("poem.txt");
//  String entireplay = join(lines, "");
//  println(entireplay);
//  println("there are " + lines.length + " lines");
//  for (int i = 0; i < lines.length; i++) {
//    println(lines[i]);
//  }
//}      


//void draw() {
//  //text
//  fill(255, 253, 216);
//  textAlign(RIGHT);
//  textFont(f);
//  textSize(24);
//  text("Stars sway and shatter on the Midnight Moon\ntheir trails scintillate, shaken by eternal winds." 
//    , width*0.9, height*0.5+85);
//  //width: 0.1=closer to left. height: 0.1=closer to top
//}

//class Animation {
//  PImage[] image;
//  int imageCount;
//  int frame;

//  Animation(String imagePrefix, int count) {
//    imageCount = count;
//    image = new PImage[imageCount];

//    for (int i = 0; i < imageCount; i++) {
//      String filename = imagePrefix + nf(i, 4) + ".jpg";
//      image[i] = loadImage(filename);
//    }
//  }
//}