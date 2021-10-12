Die child;
void setup()
{
  noLoop();
  size(1400, 900);
  background(225, 225, 225);
  frameRate(60);
}
void draw()
{
  int sum = 0;
  background(225, 225, 255);
  for (int y = 75; y<= 700; y=y+115)
  {
    for (int x = 100; x<= 1400; x=x+150) {
      child = new Die(x, y);
      child.roll();
      child.show();
      sum += child.dots;
    }
  }
  textSize(50);
  text("roll: " + sum, 625, 800);
}
void mousePressed()
{
  redraw();
}
class Die //model one single cube
{
  int tall = 1;
  int wide = 1;
  int dots = 1;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    dots = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(255, 255, 255);
    rect(myX-50, myY-50, tall+100, wide+100, 15);
    fill(0);
    if (dots == 1) {
      ellipse (myX + wide/2, myY+tall/2, tall+20, wide +20);
    }
    if (dots == 2) {
      ellipse (myX + wide/2-25, myY+tall/2 +25, tall+20, wide +20);
      ellipse (myX + wide/2+25, myY+tall/2-25, tall+20, wide +20);
    }
    if (dots == 3) {
      ellipse (myX + wide/2-25, myY+tall/2 +25, tall+20, wide +20);
      ellipse (myX + wide/2, myY+tall/2, tall+20, wide +20);
      ellipse (myX + wide/2+25, myY+tall/2-25, tall+20, wide +20);
    }
    if (dots == 4) {
      ellipse (myX + wide/2-25, myY+tall/2+25, tall+20, wide +20);
      ellipse (myX + wide/2-25, myY+tall/2-25, tall+20, wide +20);
      ellipse (myX + wide/2+25, myY+tall/2-25, tall+20, wide +20);
      ellipse (myX + wide/2+25, myY+tall/2+25, tall+20, wide +20);
    }
    if (dots == 5) {
      ellipse (myX + wide/2-25, myY+tall/2+25, tall+20, wide +20);
      ellipse (myX + wide/2-25, myY+tall/2-25, tall+20, wide +20);
      ellipse (myX + wide/2, myY+tall/2, tall+20, wide +20);
      ellipse (myX + wide/2+25, myY+tall/2-25, tall+20, wide +20);
      ellipse (myX + wide/2+25, myY+tall/2+25, tall+20, wide +20);
    }
    if (dots == 6) {
      ellipse (myX + wide/2-25, myY+tall/2+25, tall+20, wide +20);
      ellipse (myX + wide/2-25, myY+tall/2, tall+20, wide +20);
      ellipse (myX + wide/2-25, myY+tall/2-25, tall+20, wide +20);
      ellipse (myX + wide/2+25, myY+tall/2-25, tall+20, wide +20);
      ellipse (myX + wide/2+25, myY+tall/2, tall+20, wide +20);
      ellipse (myX + wide/2+25, myY+tall/2+25, tall+20, wide +20);
    }
  }
}
