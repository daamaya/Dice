Die Alpha;
int total = 0;
void setup()
{
	size(410,450);
	noLoop();
}
void draw()
{
	background(255);
	for(int y = 50;y <= (120*3);y+=120)
	{
		for(int x = 50;x <= 120*3;x+=120)
		{
			Alpha = new Die(x,y);
			Alpha.show();
		}
	}
	textAlign(CENTER);
	text("Total = "+ total,410/2,400);
}
void mousePressed()
{
	redraw();
	total = 0;
}
class Die //models one single dice cube
{
	int myX, myY, myValue;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		myValue = (int)(Math.random()*6)+1;
	}
	void blankDie()
	{
		fill(random(255),random(255),random(255));
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
			total = total + 1;
		}
		if(myValue==2)
		{
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+70-20,myY+70-20,10,10);
			total = total + 2;
		}
		if(myValue==3)
		{
			ellipse(myX+20,myY+70-20,10,10);
			ellipse(myX+70-20,myY+20,10,10);
			centerDot();
			total = total + 3;
		}
		if(myValue==4)
		{
			fourDot();
			total = total + 4;
		}
		if(myValue==5)
		{
			fourDot();
			centerDot();
			total = total + 5;
		}
		if(myValue==6)
		{
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+70-20,myY+20,10,10);
			ellipse(myX+20,myY+35,10,10);
			ellipse(myX+70-20,myY+35,10,10);
			ellipse(myX+20,myY+50,10,10);
			ellipse(myX+70-20,myY+50,10,10);
			total = total + 6;
		}
	}
}
