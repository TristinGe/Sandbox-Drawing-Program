// Global Variables
Boolean draw = false, toolBarOn = false, toolBarReset = false, lineD=false, rectD=false, triD=false, eraserOn=false, ColourBOn=false, ColourBReset=false;
float diameter;
float quitBX, quitBY, quitBWidth, quitBHeight;
int reset=1, intilSize=30, size;
color white=#FFFFFF, black=#000000, red=#FF0303, quitBcolour, buttonBlue=#3EA9FF, grey=#CCCCCC, lgrey=#E6E6E6;
PFont font;

float NpaperX, NpaperY, NpaperWidth, NpaperHeight;
float circleDX, circleDY, circleDWidth, circleDHeight;
float lineDX, linetDY, lineDWidth, lineDHeight;
float toolsX, toolsY, toolsWidth, toolsHeight;
//line tool
float DlineX1, DlineY1, DlineX2, DlineY2, DlineX3, DlineY3, DlineWidth, DlineHeight, elineX, elineY, elineD;
float eraserX, eraserY;
float colourX, colourY, colourW, colourH;
float redX, redY, blueX, blueY, yellowX, yellowY, orangeX, orangeY, purpleX, purpleY, greenX, greenY;
//
color Dcolour;
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
  //rect(0, 0, width, height);
  Newpaper();
  tools();
  quit();
  Newpaper1();
  tool();
  toolBar();
  eraser();
  colourBar();

}//End draw()

void mousePressed() 
{
  mousepressToolBar();
  toolsele();
}//End mousePressed()
//
//End Main
