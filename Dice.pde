void setup()
{
  noLoop();
  size(500, 500);
  
}
void draw()
{
 
  for (int y = 70; y <= 370; y = y + 60)
  {
  	for (int x = 70; x <= 370; x = x + 60)
  	{
  		 Die bob = new Die(40+x, 40+y);
  		 bob.show();
  		
  	}
  }

  
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

  Die(int x, int y)  //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
  	numDots = 4;//(int)(Math.random()*6)+1;
  
  }
  
  void show()
  {
  	rect(myX, myY, 50, 50, 10);
  	if(numDots == 1)
  	{
  		ellipse(myX+ 25,myY+25,15,15);
  	}
  	if(numDots == 2)
  	{
  		ellipse(myX+16, myY+16, 15, 15);
  		ellipse(myX+36, myY+31, 15, 15);
  	}
  	if(numDots == 3)
  	{
  		ellipse(myX+13,myY+13,15,15);
  		ellipse(myX+25,myY+25,15,15);
  		ellipse(myX+37,myY+37,15,15);
  	}
  	if(numDots == 4)
  	{
  		ellipse(myX+15,myY+15,15,15); //left top
  		ellipse(myX+35,myY+15,15,15); // right top
  		ellipse(myX,myY,15,15); //left bottom
  		ellipse(myX,myY,15,15); // right bottom
  	}

  	
  }
}