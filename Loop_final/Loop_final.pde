int value=40;
int level=50;
int var = 200;

//# of ellipses
float y=440;
float[] a  = new float[var];
float[] b  = new float[var];
float[] c = new float[var];
float[] d = new float[var];

//inserting data...
import processing.sound.*;
BrownNoise noise;


void setup() {
  y = height * 1.5;
  size(1700, 500);
  for (int i = 1; i < c.length; i++) {
  //where every set moves
    //A, moves to edge of screen
    noStroke();
    a [i] = random(width);

    //B, moves to edge of screen
    b[i] = random(height);

    //C
    c[i] = random(8, 4);

    //D
    d[i] = random(3, 4);
  }

  frameRate(28);

//play noise @ start
  noise = new BrownNoise(this);
  noise.play();
}      

void draw() {

  background(2, 2, 51, 10);

//set each layer of ellipses
  for (int i =0; i < a.length; i++) {

    if (a[i] > width || a[i] < 0) {
      c[i] = -c[i];
    }
    if (b[i] > height || b[i] < 0) {
      d[i] = -d[i];
    }

//last two numbers set ellipse portions, width then height
    ellipse(a[i], b[i], 530, 13);
    a[i] = a[i] + c[i]; 
    b[i] = b[i] + d[i];
    
//pressed mouse
    if (mousePressed == true) {
      fill(234, 49, 73, 35);
    } else {
      //text when mouse not clicked
      println("Imagine the sun rising above lustrous ocean waves.");

//unpressed mouse
    }
    if (mousePressed == false) {
      fill(252, 208, 133, 30);
    } else {   
      //text when clicked
        println("See the sun fall and dip into fathomless crimson depths.");
    }
  }
}
  