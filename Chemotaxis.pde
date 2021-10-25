Bacteria [] bobs = new Bacteria [10];
int Y_AXIS;
color c1, c2;
 void setup ()
  {
    frameRate(30);
    size (400,400);
    background(0);
  c2 = color(0);
  c1 = color(37, 1, 92);

  for (int i = 0; i < bobs.length; i++){
    bobs[i] = new Bacteria();
    }
  }
  void draw ()
  {
    setGradient(0, 0, width, height, c1, c2, Y_AXIS);
    setGradient(width, 0, width, height, c1, c2, Y_AXIS);
    for (int i = 0; i < bobs.length; i++){
      stroke(bobs[i].myColor);
      bobs[i].move();
      bobs[i].avoid();
      bobs[i].die();
      bobs[i].show();
    }
  }


class Bacteria
{
  int myX, myY, myColor, mySize;
  Bacteria()
  {
    myX = (int)(Math.random()*380);
    myY = (int)(Math.random()*380);
    myColor = color(190, 255, 20);
    mySize = 7;
  }
  void move()
  {
    myX = myX + (int)(Math.random()*9)-4;
    myY = myY + (int)(Math.random()*9)-4;
    while (myX >= 380){
      myX = myX - (int)(Math.random()*9)-4;
    }
    while (myX <= 20){
      myX = myX + (int)(Math.random()*9)-4;
    }
    while (myY >= 380){
      myY = myY - (int)(Math.random()*9)-4;
    }
    while (myY <= 20){
      myY = myY + (int)(Math.random()*9)-4;
    }
  }
  void show()
  {
   fill(myColor);
   ellipse(myX, myY, mySize, mySize);
  }
  void die()
  {
    if (dist(myX, myY, mouseX, mouseY) <= mySize)
      mySize = 0;
  }
  void avoid()
  {
    if (mouseX - myX <= 0 && dist(myX, myY, mouseX, mouseY) <= mySize/2 + 60){
      myX = myX + (int)(Math.random()*9)-2;
    }
    if (mouseX - myX >= 0 && dist(myX, myY, mouseX, mouseY) <= mySize/2 + 60){
      myX = myX + (int)(Math.random()*9)-6;
    }
  if (mouseY - myY <= 0 && dist(myX, myY, mouseX, mouseY) <= mySize/2 + 60){
      myY = myY + (int)(Math.random()*9)-2;
    }
  if (mouseY - myY >= 0 && dist(myX, myY, mouseX, mouseY) <= mySize/2 + 60){
      myY = myY + (int)(Math.random()*9)-6;
    }
  }
}
void setGradient(int x, int y, float w, float h, color c2, color c1, int axis) 
{
  noFill();
  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    } 
  }
}
