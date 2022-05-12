// Global Variables
Boolean draw = false;
float drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight;
//
void setup() 
{
  size(500, 600); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  //Should declare landscape, portrait, or square
  //
  //Population
  drawSurfaceX =width*0;
  drawSurfaceY = height*0;
  drawSurfaceWidth = width*3/4;
  drawSurfaceHeight = height*4/5;
  //
  rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
}

void draw() 
{
  if ( mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight)
  {if (draw==true) line (mouseX, mouseY, pmouseX, pmouseY);}
}//End draw()

void keyPressed() 
{
  
}//End keyPressed()

void mousePressed() 
{
  //Paper-Button
  if ( mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) 
  {if(draw == true) {draw=false;} else {draw=true;}//End draw boolean
  }//End Paper-Button
  //
  
}//End mousePressed()
//
//End Main
