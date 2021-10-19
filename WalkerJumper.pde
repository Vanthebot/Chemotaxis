class Jumper
{
  int myX, myY;
  Jumper()
  {
    myX = 250;
    myY = 250;
  }
  void jump()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  void show()
  {
    ellipse(myX,myY,50,50);
  }
}

class Walker
{
  int myX, myY;
  Walker()
  {
    myX = 175;
    myY = 250;
  }
  void walk()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
  }
  void show()
  {
    ellipse(myX,myY,50,50);
  }
}

Jumper bob;
Walker fred;
//Walker matt;
 Walker [] oldpplhome = {
    new Walker(),
    new Walker(),
    new Walker(),
    new Walker(),
    new Walker(),
    new Walker(),
    new Walker(),
    new Walker(),
  };
 Walker [] betterOldPplHome = new Walker [100];  
 
void setup()
{
  size(500,500);
  background(0);
  bob = new Jumper();
  fred = new Walker();
  //matt = new Walker(230,250);
   for (int i = 0; i < betterOldPplHome.length; i++){
    betterOldPplHome[i] = new Walker();
   }
}

void draw()
{
  background(0);
  //bob.jump();
  //bob.show();
  //fred.walk();
  //fred.show();
  //matt.walk();
  //matt.show();
 
  for (int i = 0; i < oldpplhome.length; i++){
    fill((int)(Math.random()*255));
    oldpplhome[i].walk();
    oldpplhome[i].show();
  }
  int i = 0;
  while (i < betterOldPplHome.length){
    betterOldPplHome[i].walk();
    betterOldPplHome[i].show();
    i++;
  }

}
