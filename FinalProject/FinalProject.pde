//This Program Runs at 960*540
// Global Variables
Boolean draw = false, toolBarOn = false, toolBarReset = false, lineD=false, rectD=false, triD=false, eraserOn=false, ColourBOn=false, ColourBReset=false, BGbar=false, BGbarReset=false;
float diameter;
float quitBX, quitBY, quitBWidth, quitBHeight;
int reset=1, intilSize=30, size;
color white=#FFFFFF, black=#000000, red=#FF0303, quitBcolour, buttonBlue=#3EA9FF, grey=#CCCCCC, lgrey=#E6E6E6;
PFont font;

float NpaperX, NpaperY, NpaperWidth, NpaperHeight;
//cover
float HorX, HorY, HorW, HorH, VerX, VerY, VerW, VerH;
//tolls
float circleDX, circleDY, circleDWidth, circleDHeight;
float lineDX, linetDY, lineDWidth, lineDHeight;
float toolsX, toolsY, toolsWidth, toolsHeight;
float eraserX, eraserY;
//line tool
float DlineX1, DlineY1, DlineX2, DlineY2, DlineX3, DlineY3, DlineWidth, DlineHeight, elineX, elineY, elineD;
//colour
float colourX, colourY, colourW, colourH;
float redX, redY, blueX, blueY, yellowX, yellowY, orangeX, orangeY, purpleX, purpleY, greenX, greenY, blackX, blackY, whiteX, whiteY,CselW;
color Dblue=#1756FF, Dyellow=#FBFF1F, Dorange=#FF9121, Dpurple=#8F21FF, Dgreen=#1BCB0C, DrawingColour;
color Dcolour;
//background
float BGX, BGY, BGW, BGH;
float BGWhiteX, BGWhiteY, BGWidth, BGHeight, BGBlackX, BGBlackY, BGBlackW, BGBlackH, BGGreyX, BGGreyY, BGGreyW, BGGreyH;
color backgroundC=white;
//templates
float temX, temY, temW, temH;
float temX1, temY1, temX2, temY2, temX3, temY3;
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
  noStroke();
  fill(grey);
  rect(HorX, HorY, HorW, HorH);
  rect(VerX, VerY, VerW, VerH);
  fill(white);
  stroke(reset);
  quit();
  NewpaperB();
  eraser();
  colourBar();
  toolBar();
  DrawingColour();
  //tool();
  BackGround();
  templates();
  tool();
}//End draw()

void mousePressed() 
{
  mousepressToolBar();
  toolsele();
  ColorBarPress();
  DrawingColour();
  BackGroundbarPress();
}//End mousePressed()
//
//End Main
