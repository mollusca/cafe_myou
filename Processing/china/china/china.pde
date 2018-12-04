PImage china;
int pointillize = 5;

void setup() {
  size(200,200);
  china = loadImage("china.jpg");
  china.resize(200,200);
  background(0);
  smooth();
  frameRate(1000);
}

void draw() {
  // Pick a random point
  int x = int(random(china.width));
  int y = int(random(china.height));
  int loc = x + y*china.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(china.pixels[loc]);
  float g = green(china.pixels[loc]);
  float b = blue(china.pixels[loc]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r,g,b,100);
  ellipse(x,y,pointillize,pointillize);
}
