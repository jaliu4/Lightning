void setup()
{
  size(300,300);
}
void draw()
{
  background(0,0,0);
  ellipse(150,280,100,100);
  stroke(255,255,0);
  strokeWeight(5);
  line(150,0,150,20);
  
}
void mousePressed()
{
  redraw();
}