void setup()
{
  noLoop();
  size(500, 500);
  //textAlign(250,250);
}
void draw()
{
  background(0);
  Die bob = new Die(40, 40);
  bob.show();
  
}
void mousePressed()
{
  //redraw();
}
class Die //models one single dice cube
{
  int myX;
  int myY;
  int numDots;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    numDots = (int)(Math.random()*6)+1;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    if(numDots < 7)
    {
      rect(myX,myY,50,50);
      fill(255,0,0);
      
    }
  }
}