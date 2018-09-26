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
		myValue = 6;
	}
	void blankDie()
	{
		fill(255);
		rect(myX,myY,70,70,15);
	}
	void centerDot()
	{
		ellipse(myX+35,myY+35,10,10);
	}
	void fourDot()
	{
		ellipse(myX+20,myY+20,10,10);
		ellipse(myX+70-20,myY+20,10,10);
		ellipse(myX+20,myY+70-20,10,10);
		ellipse(myX+70-20,myY+70-20,10,10);
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		blankDie();
		fill(0);
		if(myValue==1)
		{
			centerDot();
		}
		if(myValue==2)
		{
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+70-20,myY+70-20,10,10);
		}
		if(myValue==3)
		{
			ellipse(myX+20,myY+70-20,10,10);
			ellipse(myX+70-20,myY+20,10,10);
			centerDot();
		}
		if(myValue==4)
		{
			fourDot();
		}
		if(myValue==5)
		{
			fourDot();
			centerDot();
		}
		if(myValue==6)
		{
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+70-20,myY+20,10,10);
			ellipse(myX+20,myY+35,10,10);
			ellipse(myX+70-20,myY+35,10,10);
			ellipse(myX+20,myY+50,10,10);
			ellipse(myX+70-20,myY+50,10,10);
		}
	}
}
