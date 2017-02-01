public void setup()
{
	background(0);
	size(600,600);
	stroke(0,0,0,0);
	fractal(300, 300, 600, 255);
}
public void fractal(int x, int y, int size, int tone)
{
	if (size < 11)
	{
		ellipse(x, y, size, size);
	}
	else 
	{
		if (size%3 ==0)
			fill(tone, 0, 0, 50);
		else if (size%2 ==0)
			fill(0, tone, 0, 50);
		else 
			fill(0, 0,tone, 50);
		ellipse(x, y, size, size);
		fractal(x - size/4, y, size/2, 255 -size);
		fractal(x + size/4, y, size/2, 255 -size);
		fractal(x, y - size/4, size /2, 255 -size);
		fractal(x, y + size/4, size /2, 255 -size);
	}
}