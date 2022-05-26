// Global Variables
Boolean draw = false, toolBarOn = false, toolBarReset = false, lineD=false, rectD=false, triD=false;
float diameter;
float quitBX, quitBY, quitBWidth, quitBHeight;
int reset=1, intilSize=55, size;
color white=#FFFFFF, black=#000000, red=#FF0303, quitBcolour, buttonBlue=#3EA9FF, grey=#CCCCCC, lgrey=#E6E6E6;
PFont font;

float NpaperX, NpaperY, NpaperWidth, NpaperHeight;
float circleDX, circleDY, circleDWidth, circleDHeight;
float lineDX, linetDY, lineDWidth, lineDHeight;
float toolsX, toolsY, toolsWidth, toolsHeight;
//line tool
float DlineX1, DlineY1, DlineX2, DlineY2, DlineX3, DlineY3, DlineWidth, DlineHeight, elineX, elineY, elineD;
//
void setup() 
{
  size(960, 540); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
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
  tool();
  toolBar();

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
