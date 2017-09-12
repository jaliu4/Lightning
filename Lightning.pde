int xStart = 150;
int yStart = 0;
int xEnd = 150;
int yEnd = 0;
int Hand = 250;

void setup()
{
  size(300,300);
  strokeWeight(5);
  noLoop();
}
void draw()
{
  guy();
  lightningbolt();
 }
    
void lightningbolt()
{
  stroke(255,255,0);
  while(yEnd < 300)
  {
    xEnd = xStart + ((int) (Math.random()*19 - 9));
    yEnd = yStart + ((int) (Math.random()*10));
    line(xStart,yStart,xEnd,yEnd);
    xStart = xEnd;
    yStart = yEnd;
   }
 }
 
void guy()
{
  background(0,0,0);
  stroke(180,82,45);
  Hand = Hand + ((int) (Math.random()*10 - 9));
  line(220,300,280,Hand);
  line(80,300,20,Hand);
  fill(170,82,45);
  ellipse(150,280,100,100);
  fill(0);
  textSize(35);
  text(">", 120, 280);
  text("<", 150, 280);
}
 
void mousePressed()
{
  xStart = 150;
  yStart = 0;
  xEnd = 150;
  yEnd = 0;
  Hand = 250;
  redraw();
}