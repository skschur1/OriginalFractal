	int framespast = 0;
public void setup()
{
	background(0);
	size(600,600);
	stroke(255,255,255,2);
	frameRate(10);
}
public void draw()
{
		fractal(300, 300, 600, 255);
		framespast++;
		if (framespast > 10)
			noLoop();
}
public void fractal(int x, int y, int size, int tone)
{
	if (size < 4)
	{
		ellipse(x, y, size, size);
	}
	else 
	{
		if (size%3 ==0)
			fill(tone, 0, 0, 3);
		else if (size%2 ==0)
			fill(0, tone, 0, 3);
		else 
			fill(0, 0,tone, 3);
		ellipse(x, y, size, size);
		fractal(x - size/4, y, size/2, 255 -size);
		fractal(x + size/4, y, size/2, 255 -size);
		fractal(x, y - size/4, size /2, 255 -size);
		fractal(x, y + size/4, size /2, 255 -size);
	}
}