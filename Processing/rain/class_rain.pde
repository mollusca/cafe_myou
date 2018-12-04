class Rain
{
  float xpos;
  float ypos;
  float speed;
  float h;
  float gravity;
  Rain(float xpos,float ypos)
  {
    this.xpos=xpos;
    this.ypos=ypos;
    speed=random(5,10);
    h=random(7,12);
  }
  
  void display()
  {
    stroke(255,80);
    line (xpos,ypos,xpos,ypos+h);
  }
  
  void move()
  {
   ypos +=(speed+gravity);
   gravity +=0.1;
   if(ypos>height)
   {
     ypos=0;
     xpos = random(width);
     gravity=0;
   }
  }
  
}
  
