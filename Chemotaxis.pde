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
    myX = (int)(200);
    myY = (int)(200);
    myColor = color(220, 250, 25);
  }
  void move()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
    if (myX >= 400){
      myX = myX - (int)(Math.random()*7)-3;
    }
    if (myX <= 0){
      myX = myX + (int)(Math.random()*7)-3;
    }
  }
  void show()
  {
    fill(myColor);
   ellipse(myX, myY, 6, 5);
  }
}
