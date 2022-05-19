// Global Variables
Boolean draw = false;
float diameter;
float quitBX, quitBY, quitBWidth, quitBHeight;
int reset=1, intilSize=55, size;
color white=#FFFFFF, black=#000000, red=#FF0303, quitBcolour;
PFont font;
String quitBString="Quit", secTextString="?";
float secTextX, secTextY, secTextWidth, secTextHeight;
float circleDX, circleDY, circleDWidth, circleDHeight;
float lineDX, linetDY, lineDWidth, lineDHeight;
//
void setup() 
{
  size(500, 600); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  //Should declare landscape, portrait, or square
  //
  population();
  textSetup();
}

void draw() 
{
  //
  //paper
  Newpaper();
  tools();
  quit();
  Newpaper1();
  
}//End draw()

void keyPressed() 
{
  
}//End keyPressed()

void mousePressed() 
{
  mousepress();
}//End mousePressed()
//
//End Main
