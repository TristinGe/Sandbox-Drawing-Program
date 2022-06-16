// Global Variables
Boolean paper=false;
float drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight;
//
void Newpaper()
{
  fill(backgroundC);
  noStroke();
  if (paper==true){rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);paper=false;}
  stroke(reset);
}
