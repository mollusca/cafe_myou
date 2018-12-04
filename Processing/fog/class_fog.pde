class Fog {
 float xpos;
 float ypos;
 float w;
 float speed;
 
 Fog() {
   xpos = width / 4 + random(-40, 60);
   ypos = height / 3;
   speed = random(1, 2);
   w = random(40, 120);
 }
 
 void display() {
   
   imageMode(CENTER);
   tint(255, 50);
   image(fog, xpos, ypos, w, w);
   imageMode(CORNER);
 }
 void move() {
   ypos = ypos - speed;
   
   if(ypos < -100) {
     ypos = height / 2;
   }
 }
}
