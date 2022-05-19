// Global Variables
Boolean paper=false;
float drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight;
//
void Newpaper()
{
  if (paper==true){rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);paper=false;}
}
