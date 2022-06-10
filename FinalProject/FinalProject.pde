import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//This Program Runs at 960*540, DO NOT TRY TO STRETCH IT!
// Global Variables
Boolean draw = false, toolBarOn = false, toolBarReset = false, lineD=false, rectD=false, triD=false, eraserOn=false, ColourBOn=false, ColourBReset=false, BGbar=false, BGbarReset=false, exTemp=false, exTempReset=false;
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
float exX1, exY1, exW, exH, exX2, exY2, exW2, exH2, exX3, exY3, exW3, exH3;
PImage biaoqing1, biaoqing2, biaoqing3;
//Music
Minim minim; //creates an object to access all function
int numberOfSongs = 4;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //creates a "Play List" variable holding extesions ...
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;
color purple=#2C08FF; //Comparison of Gray Scale and Hexidecimal
PFont titleFont;
float MuBarX, MuBarY, MuBarW, MuBarH;
float NSX, NSY, LSX, LSY, PSX, PSY, MBBW, MBBH, LoopSX, LoopSY;
Boolean MBOn=false, MBreset=false, LoopI=false, LoopO=true;
PImage NextS, LastS, PlayS, PauseS, LoopS, OrderS;
void setup() 
{
  size(960, 540); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  //Should declare landscape, portrait, or square
  //
  population();
  textSetup();
  MusicSetup();
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
  MusicDraw();
  MusicBar();
}//End draw()

void keyPressed()
{
  MusicButton();
}

void mousePressed() 
{
  mousepressToolBar();
  toolsele();
  ColorBarPress();
  DrawingColour();
  BackGroundbarPress();
  TempBarPress();
  MBPress();
}//End mousePressed()
//
//End Main
