
void setup()
{
  noLoop();
  size(400, 520);

}
void draw()
{
  background(0);
  int DiceCount = 0;
  for (int y = 0; y <= 370; y = y + 60)
  {
    for (int x = 0; x <= 370; x = x + 60)
    {
      Die bob = new Die(40+x, 40+y);
      bob.show();
      DiceCount = DiceCount + bob.numDots;
    }
  }
  fill(0,0,255);
  textSize(68);
  text(DiceCount,240,510);
  textSize(30);
  text("Try to get 252! ", 10,510);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX;
  int myY;
  int numDots;
  int sumDots = 0;

  Die(int x, int y)  //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    numDots = (int)(Math.random()*6)+1;
  }

  void show()
  {
    fill(#52D0F5);
    rect(myX, myY, 50, 50, 10);
    if (numDots == 1)
    {
      fill(#FF0A3B);
      ellipse(myX+ 25, myY+25, 15, 15);

    }
    if (numDots == 2)
    {
      fill(#FF0A3B);
      ellipse(myX+16, myY+16, 15, 15);
      ellipse(myX+36, myY+31, 15, 15);

    }
    if (numDots == 3)
    {
      fill(#FF0A3B);
      ellipse(myX+13, myY+13, 15, 15);
      ellipse(myX+25, myY+25, 15, 15);
      ellipse(myX+37, myY+37, 15, 15);
  
    }
    if (numDots == 4)
    {
      fill(#FF0A3B);
      ellipse(myX+15, myY+15, 15, 15); //left top
      ellipse(myX+35, myY+15, 15, 15); // right top
      ellipse(myX+15, myY+35, 15, 15); //left bottom
      ellipse(myX+35, myY+35, 15, 15); // right bottom
 
    }
    if (numDots == 5)
    {
      fill(#FF0A3B);
      ellipse(myX+13,myY+13,15,15); //left top
      ellipse(myX+37,myY+13,15,15); //right top
      ellipse(myX+13,myY+38,15,15); //left bottom
      ellipse(myX+37,myY+38,15,15); //right bottom
      ellipse(myX+25,myY+25,15,15); //center  
   
    }
    if (numDots == 6)
    {
      fill(#FF0A3B);
      ellipse(myX+15,myY+12,13,13); //left top
      ellipse(myX+35,myY+12,13,13); //right top
      ellipse(myX+15,myY+26,13,13); //left middle 
      ellipse(myX+35,myY+26,13,13); //right midde
      ellipse(myX+15,myY+40,13,13); //left bottom
      ellipse(myX+35,myY+40,13,13); //right bottom
    
      
    }
    
  }
}