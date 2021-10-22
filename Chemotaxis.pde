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
    myX = myX + (int)(Math.random()*9)-4;
    myY = myY + (int)(Math.random()*9)-4;
    while (myX >= 390){
      myX = myX - (int)(Math.random()*9)-4;
    }
    while (myX <= 0){
      myX = myX + (int)(Math.random()*9)-4;
    }
    while (myY >= 390){
      myY = myY - (int)(Math.random()*9)-4;
    }
    while (myY <= 0){
      myY = myY + (int)(Math.random()*9)-4;
    }
  }
  void show()
  {
    fill(myColor);
   ellipse(myX, myY, 6, 5);
  }
}
