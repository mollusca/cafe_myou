int num=150;
int i;
PImage b;

Rain myRain[]=new Rain[num];

void setup()
{
 size(550,412); 
 b=loadImage("asd1.jpg");
 for(int i=0;i<num;i++)
 {
   myRain[i]=new Rain(random(width),random(height));
 }
}

void draw()
{
  //background(70,30,5);
  image(b,0,0,550,412);
  for(int i =0;i<num;i++)
  {
    myRain[i].display  ();
    myRain[i].move();
  }
}
