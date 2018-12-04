PImage fog, tea;

int num = 50;
Fog myFog[] = new Fog[num];

void setup() {
 size(715, 536, P3D); 
 fog = loadImage("1.png");
 for(int i = 0; i < num; i++) {
   myFog[i] = new Fog();
 }
}
void display() {
   
   imageMode(CENTER);
  image(tea, width/2, height/2); 
}

void draw() {
  tea = loadImage("2.jpg");
  display();
  for(int i = 0; i < num; i++) {
    myFog[i].display();
    myFog[i].move();
  }
  
}
