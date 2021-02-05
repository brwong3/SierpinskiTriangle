public void setup()
{
  size(800,600);
  
}

int len = 20;
public void draw()
{ 
  background(0);
  frameRate(5);
  sierpinski(len - 20,600, len);
}
public void mousePressed()//optional
{
  len = len * 2;
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20) {
    triangle(x,y, x + len, y, x + len/2, y - len);
    fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
  }
  else {
    sierpinski(x,y,len/2);
    fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
    sierpinski(x - len/2,y,len/2);
    fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
    sierpinski(x - len/4,y - len/2,len/2);
    fill((int)(Math.random() * 255),(int)(Math.random() * 255),(int)(Math.random() * 255));
  }
 
}
