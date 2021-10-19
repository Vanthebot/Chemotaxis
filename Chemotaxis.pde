 Bacteria [] bobs = new Bacteria [10];
 void setup ()
  {
    size (400,400);
    background(0);
  for (int i = 0; i < bobs.length; i++){
    bobs[i] = new Bacteria();
    }
  }
  void draw ()
  {
    background(0);
    for (int i = 0; i < bobs.length; i++){
      bobs[i].move();
      bobs[i].show();
    }
  }


class Bacteria
{
  int myX, myY, myColor;
  Bacteria()
  {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    myColor = color(255,0,0);
  }
  void move()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*6)-3;
  }
  void show()
  {
   ellipse(myX, myY, 5, 5);
  }
}
