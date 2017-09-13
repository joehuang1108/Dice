void setup()
{
	noLoop();
	size(500,500);
}
void draw()
{
	background(0);
	Die bob = new Die(50,50);
	bob.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX;
	int myY;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();

	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		ellipse(myX,myY,30,30);
	}
}
