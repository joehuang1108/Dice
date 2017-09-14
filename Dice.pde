void setup()
{
  noLoop();
  size(500, 500);
  //textAlign(250,250);
}
void draw()
{

 
 
  for (int x = 70; x <= 370; x = x + 60)
  {
  	for (int y = 70; y <= 370; y = y + 60)
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
  }
  void roll()
  {

    //your code here
  }
  void Dot1();
  {

  }
  void show()
  {
  	

  	
  }
}