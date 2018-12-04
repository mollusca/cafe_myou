PImage img;
int cnt = 0;

void setup() {
  size(500, 400);
  img  = loadImage("af.jpg");
  img.resize(500, 400);
  img.loadPixels();
  frameRate(1000);
}

void draw() {
  int initPix = (int) random(500*400);
  int init  = (int) grayRetriever(initPix);
  for (int i = 0; i < 100; i++) {
    int numPix = (int) random(500*400);
    int num = (int) grayRetriever(numPix);

    if ( num < init || random(0, 1) > float(num)/float(init)) {
      float x = numPix % 500;
      float y = numPix/500;
      point(x, y);
    }
  }
  cnt++;
  if(cnt > 10000) {
    stop();
  }
}

float grayRetriever(int pix) {
  float r = red(img.pixels[pix]);
  float g = green(img.pixels[pix]);
  float b = blue(img.pixels[pix]);

  float gray = (r+g+b) / 3;

  return(gray);
}
