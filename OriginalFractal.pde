public void setup()
{
	size(600,600);
}
public void draw()
{
	fractal(300, 300, 600, 255);
}
public void fractal(int x, int y, int size, int tone)
{
	if (size < 5)
	{
		ellipse(x, y, size, size);
	}
	else 
	{
		fill(tone, tone, tone);
		ellipse(x, y, size, size);
		fractal(x - size/4, y, size/2, tone -1);
		fractal(x + size/4, y, size/2, tone -1);
		fractal(x, y - size/4, size /2, tone -1);
		fractal(x, y + size/4, size /2, tone -1);
	}
}