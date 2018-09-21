void setup()
{
	size(500,500);
	noLoop();
}
void draw()
{
	background(255);
	Die Alpha = new Die(50,50);
	Alpha.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, myValue;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		myValue = 1;
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		if(myValue==1)
		{
			fill(255);
			rect(myX,myY,70,70,15);
			fill(0);
			ellipse(myX+35,myY+35,10,10);
		}
	}
}
