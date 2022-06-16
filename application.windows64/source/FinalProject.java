import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*; 
import ddf.minim.ugens.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class FinalProject extends PApplet {









//This Program Runs at 960*540, DO NOT TRY TO STRETCH IT!
// Global Variables
Boolean draw = false, toolBarOn = false, toolBarReset = false, lineD=false, rectD=false, triD=false, eraserOn=false, ColourBOn=false, ColourBReset=false, BGbar=false, BGbarReset=false, exTemp=false, exTempReset=false;
float diameter;
float quitBX, quitBY, quitBWidth, quitBHeight;
int reset=1, intilSize=30, size;
int white=0xffFFFFFF, black=0xff000000, red=0xffFF0303, quitBcolour, buttonBlue=0xff3EA9FF, grey=0xffCCCCCC, lgrey=0xffE6E6E6;
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
int Dblue=0xff1756FF, Dyellow=0xffFBFF1F, Dorange=0xffFF9121, Dpurple=0xff8F21FF, Dgreen=0xff1BCB0C, DrawingColour;
int Dcolour;
//background
float BGX, BGY, BGW, BGH;
float BGWhiteX, BGWhiteY, BGWidth, BGHeight, BGBlackX, BGBlackY, BGBlackW, BGBlackH, BGGreyX, BGGreyY, BGGreyW, BGGreyH;
int backgroundC=white;
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
int purple=0xff2C08FF; //Comparison of Gray Scale and Hexidecimal
PFont titleFont;
float MuBarX, MuBarY, MuBarW, MuBarH;
float NSX, NSY, LSX, LSY, PSX, PSY, MBBW, MBBH, LoopSX, LoopSY;
float hintLX, hintLY;
Boolean MBOn=false, MBreset=false, LoopI=false, LoopO=true;
PImage NextS, LastS, PlayS, PauseS, LoopS, OrderS;
public void setup() 
{
   //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  //Should declare landscape, portrait, or square
  //
  population();
  textSetup();
  MusicSetup();
}

public void draw() 
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

public void keyPressed()
{
  MusicButton();
}

public void mousePressed() 
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
public void quit() 
{
  //Quit button
  if (mouseX>=quitBX && mouseX<=quitBX+quitBWidth && mouseY>=quitBY && mouseY<=quitBY+quitBHeight) {
    quitBcolour = red;} else {quitBcolour=white;}
  fill(quitBcolour);
  noStroke(); //remove rect() outline
  rect(quitBX, quitBY, quitBWidth, quitBHeight);
  stroke(reset);
  //
  //Quit Button Text
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(quitBString, quitBX, quitBY, quitBWidth, quitBHeight);}
//
//
public void NewpaperB() {
  //Second Text
  fill(white);
  rect(NpaperX, NpaperY, NpaperWidth, NpaperHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 18;
  textFont(font, size);
  text(secTextString, NpaperX, NpaperY, NpaperWidth, NpaperHeight);
  fill(white);}
//
//
public void tool()
{
  if (mouseX>=toolsX && mouseX<=toolsX+toolsWidth && mouseY>=toolsY && mouseY<=toolsY+toolsHeight) {
    fill(buttonBlue);} else {fill(white);}
  //fill(quitBcolour);
  noStroke(); //remove rect() outline
  rect(toolsX, toolsY, toolsWidth, toolsHeight);
  stroke(reset);
  //
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(tools, toolsX, toolsY, toolsWidth, toolsHeight);}
//
public void toolBar()
{
  if (toolBarOn==true) {
    noStroke();
    //pencil
    fill(white);
    rect(DlineX1, DlineY1, DlineWidth, DlineHeight); 
    fill(black);
    ellipse(DlineX1+DlineX1*0.43f, DlineY1+DlineY1*0.5f, DlineWidth/9, DlineWidth/9);
    //rect
    fill(lgrey);
    rect(DlineX2, DlineY2, DlineWidth, DlineHeight); 
    fill(black);
    rect(DlineX2+DlineX1*0.5f-25, DlineY2+DlineY1*0.5f-20, DlineWidth-13, DlineHeight-13); 
    //tri
    fill(white);
    rect(DlineX3, DlineY3, DlineWidth, DlineHeight); 
    fill(black);
    triangle(DlineX3+DlineX1*0.5f-25, DlineY3+DlineY1*0.5f+20, DlineX3+DlineX1*0.5f-5, DlineY3+DlineY1*0.5f-20, DlineX3+DlineX1*0.5f+15, DlineY3+DlineY1*0.5f+20);
    //
    //ellipse(elineX, elineY, elineD, elineD);
    stroke(reset);}
    if (toolBarReset == true) {
   noStroke();
   fill(grey);
      rect(DlineX1, DlineY1, DlineWidth*3.1f, DlineHeight);
      fill(white);
      stroke(reset);}}
//
public void eraser()
{
  fill(white);
  rect(eraserX, eraserY, quitBWidth, quitBHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 18;
  textFont(font, 20);
  text(eraser, eraserX, eraserY, quitBWidth, quitBHeight);
  fill(white);}
//
public void colourBar() 
{
  if (mouseX>=colourX && mouseX<=colourX+toolsWidth && mouseY>=colourY && mouseY<=colourY+toolsHeight) {
  fill(buttonBlue);} else {fill(white);}
  noStroke();
  rect(colourX, colourY, colourW, colourH);
  //
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(colour, colourX, colourY, colourW, colourH);
  //
  if(ColourBOn==true){
    noStroke();
    fill(red);
    rect(redX, redY, CselW, colourH);
    
    fill(Dblue);
    rect(blueX, blueY, CselW, colourH);
    
    fill(Dyellow);
    rect(yellowX, yellowY, CselW, colourH);
    
    fill(Dpurple);
    rect(purpleX, purpleY, CselW, colourH);
    
    fill(Dgreen);
    rect(greenX, greenY, CselW, colourH);
    
    fill(Dorange);
    rect(orangeX, orangeY, CselW, colourH);
    
    fill(black);
    rect(blackX, blackY, CselW, colourH);
    
    fill(white);
    rect(whiteX, whiteY, CselW, colourH);
  }
  if(ColourBReset==true){
  fill(grey);
  noStroke();
  rect(redX, colourY, CselW*8.1f, colourH);}}
//
public void BackGround()
{
  if (mouseX>=BGX && mouseX<=BGX+BGW && mouseY>=BGY && mouseY<=BGY+BGH) {
  fill(buttonBlue);} else {fill(white);}
  noStroke();
  rect(BGX, BGY, BGW, BGH);
  //
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 18;
  textFont(font, size);
  text(BG, BGX, BGY, BGW, BGH);
  if(BGbar==true){
    noStroke();
    fill(white);
    rect(BGWhiteX, BGWhiteY, BGWidth, BGH);
    
    fill(lgrey);
    rect(BGGreyX, BGGreyY, BGWidth, BGH);
    
    fill(black);
    rect(BGBlackX, BGBlackY, BGWidth, BGH);}
  if(BGbarReset==true){
  fill(grey);
  noStroke();
  rect(BGWhiteX, BGWhiteY, BGWidth*3.1f, BGH);}}
//
public void templates()
{
  if (mouseX>=temX && mouseX<=temX+temW && mouseY>=temY && mouseY<=temY+temH) {
  fill(buttonBlue);} else {fill(white);}
  noStroke();
  rect(temX, temY, temW, temH);
  //
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 18;
  textFont(font, size);
  text(temT, temX, temY, temW, temH);
  
  if(exTemp==true){
    noStroke();
    fill(white);
    rect(exX1, exY1, exW, exH);
    image(biaoqing1,exX1, exY1, exW, exH);
    
    fill(lgrey);
    rect(exX2, exY2, exW, exH);
    image(biaoqing2,exX2, exY2, exW, exH);
    
    rect(exX3, exY3, exW, exH);
    image(biaoqing3,exX3, exY3, exW, exH);
  }
  if(exTempReset==true){
    noStroke();
    fill(grey);
    rect(exX1, exY1, exW*3.1f, exH);
  }
}
//
public void MusicBar()
{
  if (mouseX>=MuBarX && mouseX<=MuBarX+MuBarW && mouseY>=MuBarY && mouseY<=MuBarY+MuBarH) {
  fill(buttonBlue);} else {fill(white);}
  noStroke();
  rect(MuBarX, MuBarY, MuBarW, MuBarH);
  //
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 18;
  textFont(font, size);
  text(JukeBox, MuBarX, MuBarY, MuBarW, MuBarH);
  
  if(MBOn==true){
    noStroke();
    fill(white);
    image(LastS,LSX,LSY,MBBW,MBBH);
    
    if(song[currentSong].isPlaying()){
      fill(grey);
      rect(PSX,PSY,MBBW,MBBH);
      image(PauseS,PSX,PSY,MBBW,MBBH);
    } else {
      fill(grey);
      rect(PSX,PSY,MBBW,MBBH);
      image(PlayS,PSX,PSY,MBBW,MBBH);}

    image(NextS,NSX,NSY,MBBW,MBBH);
    
    if(LoopO==true){
      fill(grey);
      rect(LoopSX,LoopSY,MBBW,MBBH);
      image(OrderS,LoopSX,LoopSY,MBBW,MBBH);
    } else {
      fill(grey);
      rect(LoopSX,LoopSY,MBBW,MBBH);
      image(LoopS,LoopSX,LoopSY,MBBW,MBBH);}}
      
  if(MBreset==true){
    noStroke();
    fill(grey);
    rect(LSX,LSY,MBBW*3.1f,MBBH);
    rect(LoopSX,LoopSY,MBBW,MBBH);}
    
  if(LoopI==true){
    rect(hintLX, hintLY+MBBH/4, MBBW*1.5f, MBBH/2); 
    fill(black); //Ink
    textAlign (CENTER, CENTER);
    size = 18;
    textFont(font, size);
    text(Hint1, hintLX, hintLY+MBBH/4, MBBW*1.5f, MBBH/2);}
  
  if(LoopI==false){
    fill(grey);
    noStroke();  
    rect(hintLX, hintLY+MBBH/4, MBBW*1.5f, MBBH/2);}
    
  fill(grey);
  rect(hintLX, hintLY+MBBH, MBBW*4, MBBH*1.5f);
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 18;
  textFont(font, size);
  text(Hint2, hintLX, hintLY+MBBH, MBBW*4, MBBH*1.5f);
}
//
public void MBB()
{
  
}
  
public void mousepressToolBar()
{
  //Paper-Button
  if ( mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) 
  {if(draw == true) {draw=false;} else {draw=true;}//End draw boolean
  }//End Paper-Button
  //
  if (mouseX>=quitBX && mouseX<=quitBX+quitBWidth && mouseY>=quitBY && mouseY<=quitBY+quitBHeight)exit();
  //
  //New Paper
  if (mouseX>=NpaperX && mouseX<=NpaperX+NpaperWidth && mouseY>=NpaperY && mouseY<=NpaperY+NpaperHeight)paper=true;
  //
  if (mouseX>=toolsX && mouseX<=toolsX+toolsWidth && mouseY>=toolsY && mouseY<=toolsY+toolsHeight){if(toolBarOn == false) {toolBarOn=true;toolBarReset=false;} else {toolBarOn=false;toolBarReset=true;}}}
//
public void toolsele()
{
  if (mouseX>=DlineX1 && mouseX<=DlineX1+DlineWidth && mouseY>=DlineY1 && mouseY<=DlineY1+DlineHeight && toolBarOn==true){lineD=true;rectD=false;triD=false;eraserOn=false;}
  if (mouseX>=DlineX2 && mouseX<=DlineX2+DlineWidth && mouseY>=DlineY2 && mouseY<=DlineY2+DlineHeight && toolBarOn==true){lineD=false;rectD=true;triD=false;eraserOn=false;}
  if (mouseX>=DlineX3 && mouseX<=DlineX3+DlineWidth && mouseY>=DlineY3 && mouseY<=DlineY3+DlineHeight && toolBarOn==true){lineD=false;rectD=false;triD=true;eraserOn=false;}
  if (mouseX>=eraserX && mouseX<=eraserX+quitBWidth && mouseY>=eraserY && mouseY<=eraserY+quitBHeight){lineD=false;rectD=false;triD=false;eraserOn=true;}}
//
public void ColorBarPress()
{
  if (mouseX>=colourX && mouseX<=colourX+colourW && mouseY>=colourY && mouseY<=colourY+colourH){if(ColourBOn == false) {ColourBOn=true;ColourBReset=false;} else {ColourBOn=false;ColourBReset=true;}}
  if (mouseX>=redX && mouseX<=redX+CselW && mouseY>=redY && mouseY<=redY+colourH && ColourBOn==true){DrawingColour=red;}
  if (mouseX>=blueX && mouseX<=blueX+CselW && mouseY>=blueY && mouseY<=blueY+colourH && ColourBOn==true){DrawingColour=Dblue;}
  if (mouseX>=yellowX && mouseX<=yellowX+CselW && mouseY>=yellowY && mouseY<=yellowY+colourH && ColourBOn==true){DrawingColour=Dyellow;}
  if (mouseX>=purpleX && mouseX<=purpleX+CselW && mouseY>=purpleY && mouseY<=purpleY+colourH && ColourBOn==true){DrawingColour=Dpurple;}
  if (mouseX>=greenX && mouseX<=greenX+CselW && mouseY>=greenY && mouseY<=greenY+colourH && ColourBOn==true){DrawingColour=Dgreen;}
  if (mouseX>=orangeX && mouseX<=orangeX+CselW && mouseY>=orangeY && mouseY<=orangeY+colourH && ColourBOn==true){DrawingColour=Dorange;}
  if (mouseX>=blackX && mouseX<=blackX+CselW && mouseY>=blackY && mouseY<=blackY+colourH && ColourBOn==true){DrawingColour=black;}
  if (mouseX>=whiteX && mouseX<=whiteX+CselW && mouseY>=whiteY && mouseY<=whiteY+colourH && ColourBOn==true){DrawingColour=white;}}
//
public void BackGroundbarPress()
{
  if (mouseX>=BGX && mouseX<=BGX+BGW && mouseY>=BGY && mouseY<=BGY+BGH){if(BGbar == false) {BGbar=true;BGbarReset=false;} else {BGbar=false;BGbarReset=true;}}
  if (mouseX>=BGWhiteX && mouseX<=BGWhiteX+BGWidth && mouseY>=BGY && mouseY<=BGWhiteY+BGH && BGbar==true){backgroundC=white;}
  if (mouseX>=BGGreyX && mouseX<=BGGreyX+BGWidth && mouseY>=BGY && mouseY<=BGGreyY+BGH && BGbar==true){backgroundC=lgrey;}
  if (mouseX>=BGBlackX && mouseX<=BGBlackX+BGWidth && mouseY>=BGY && mouseY<=BGBlackY+BGH && BGbar==true){backgroundC=black;}
}
//
public void TempBarPress()
{
if (mouseX>=temX && mouseX<=temX+temW && mouseY>=temY && mouseY<=temY+temH){if(exTemp == false) {exTemp=true;exTempReset=false;println("On");} else {exTemp=false;exTempReset=true;println("Off");}}
if (mouseX>=exX1 && mouseX<=exX1+exW && mouseY>=exY1 && mouseY<=exY1+exH && exTemp==true){image(biaoqing1, drawSurfaceX*2-drawSurfaceX/2, drawSurfaceY);}
if (mouseX>=exX2 && mouseX<=exX2+exW && mouseY>=exY2 && mouseY<=exY2+exH && exTemp==true){image(biaoqing2, drawSurfaceX*2-drawSurfaceX/2, drawSurfaceY);}
if (mouseX>=exX3 && mouseX<=exX3+exW && mouseY>=exY3 && mouseY<=exY3+exH && exTemp==true){image(biaoqing3, drawSurfaceX*2-drawSurfaceX/2, drawSurfaceY);}
}
//
public void MBPress()
{
  if(mouseX>=MuBarX && mouseX<=MuBarX+MuBarW && mouseY>=MuBarY && mouseY<=MuBarY+MuBarH){if(MBOn == false) {MBOn=true;MBreset=false;println("On");} else {MBOn=false;MBreset=true;println("Off");}}
  if(mouseX>=LSX && mouseX<=LSX+MBBW && mouseY>=LSY && mouseY<=LSY+MBBH && MBOn == true){
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      playlistArrayErrorB();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      playlistArrayErrorB();
      song[currentSong].play();}};

  if(mouseX>=PSX && mouseX<=PSX+MBBW && mouseY>=PSY && mouseY<=PSY+MBBH && MBOn == true){
    if ( song[currentSong].isPlaying() ) { 
      song[currentSong].pause();
    } else { 
      if(LoopI==true){
      song[currentSong].loop();
      } else {
      song[currentSong].play();if(song[currentSong].position()>= song[currentSong].length()-2 ){playlistArrayErrorN();song[currentSong].play();}}}} 
 
  if(mouseX>=NSX && mouseX<=NSX+MBBW && mouseY>=NSY && mouseY<=NSY+MBBH && MBOn == true){
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      playlistArrayErrorN();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      playlistArrayErrorN();
      song[currentSong].play();}}
      
  if(mouseX>=LoopSX && mouseX<=LoopSX+MBBW && mouseY>=LoopSY && mouseY<=LoopSY+MBBH && MBOn == true){
    if(LoopI==false){LoopI=true;LoopO=false;} else {LoopI=false;LoopO=true;}}
}
//String CurrentSongPosition="song[currentSong].position()";
public void MusicSetup()
{
  minim = new Minim(this); //load from data directroy, loadFile() should also load from project folder, like loadImage()
  song[currentSong] = minim.loadFile("MusicDownload/洛天依 - starlight.mp3"); //able to pass absolute paths, file name & extesnion, and URL
  song[currentSong+=1] = minim.loadFile("MusicDownload/ヒグチアイ - 悪魔の子.mp3");
  song[currentSong+=1] = minim.loadFile("MusicDownload/ゆう十 - Lemon（Cover 米津玄师）.mp3");
  song[currentSong+=1] = minim.loadFile("MusicDownload/ワルキューレ - 一度だけの恋なら.mp3");
  currentSong-=currentSong;
  for ( int i=currentSong; i<song.length; i++ ) {
    songMetaData[i] = song[i].getMetaData(); //reads song meta 1, like song 1, mimicing array notation
  }//End Meta Data
  
   //songMetaData[0] = song[0].getMetaData(); //reads song meta 1, like song 1, mimicing array notation
   //songMetaData[1] = song[1].getMetaData();
   //songMetaData[2] = song[2].getMetaData();
   //songMetaData[3] = song[3].getMetaData();
   

  titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  //
  println( "Start of Console" );
  println( "Click the Console to Finish Starting this Program" ); //Review of OS-level button
  println( "Title", songMetaData[currentSong].title() ); //Introduction of Key:Value Pairs (similar to websites)
  //
}
//
public void MusicDraw()
{
  //Note: logical operators could be nested IFs
  if ( song[currentSong].isLooping() && song[currentSong].loopCount()!=-1 ) println("There are", song[currentSong].loopCount(), "loops left.");
  if ( song[currentSong].isLooping() && song[currentSong].loopCount()==-1 ) println("Looping Infinitely");
  if ( song[currentSong].isPlaying() && !song[currentSong].isLooping() ) println("Play Once");
  //
  println("Current Song:", currentSong);
  println( "Song Position", song[currentSong].position(), "Song Length", song[currentSong].length() );
  //
  fill(purple); 
  textAlign (CENTER, CENTER); 
  //
  textFont(font, 20);
  String[] Info = new String[3];
  Info[0] = songMetaData[currentSong].title();
  Info[1] = String.valueOf(song[currentSong].length()/1000);
  Info[2] = String.valueOf(song[currentSong].position()/1000);
  String INFO = join(Info, " / "); 
  
  //rect(width*1/4, height*0, width*1/2, height*1/10);
  fill(black);
  text( INFO, width*1/4, height*0, width*1/2, height*1/10);
  fill(255); 
  //
}
//
public void MusicButton()
{
if( key==' '){
    if ( song[currentSong].isPlaying() ) { 
      song[currentSong].pause();
    } else { 
      if(LoopI==true){
      song[currentSong].loop();
      } else {
      song[currentSong].play();if(song[currentSong].isPlaying() ){ song[currentSong].pause();song[currentSong].rewind();playlistArrayErrorN();song[currentSong].play();}}
    }}
  //
  //Another Play Button, as a finite loop() && infinite loop()
  //Only press a number for this code below
  println(key);
  if ( key=='1' || key=='9' ) {
    //Note: "9" is assumed to be massive! "Simulate Infinite"
    if ( key=='1' ) println("Looping Once");
    if ( key=='9' ) println("Looping 9 times."); //Simulate Infinity
    String keystr = String.valueOf(key); //Must press a number
    println("Number of Repeats is", keystr); 
    int loopNum = PApplet.parseInt(keystr); //Local Variable plays once and loops loopNum of times
    song[currentSong].loop(loopNum); //Parameter is number of loops
    // if ( key=='l' || key=='L' ) song1.loop(loopNum); //Parameter is number of loops
  }
  if ( key=='i' || key=='I' ) song[currentSong].loop(); //Infinite Loop, no parameter OR -1
  if ( key>='2' && key!='9' ) println("I donot loop that much, press infinite loop.");
  //
  if ( key=='m' || key=='M' ) { //Mute Button
    //Note: Mute has built-in pause button
    //Note: built-in .isPlaying() question
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  }//End Mute Button
  //
  //Built-in question: .isPlaying()
  if ( key==CODED ){if(keyCode==RIGHT){song[currentSong].skip( 1000 );}}  //Skip forward 1 second (1000 milliseconds)
  if ( key==CODED ){if(keyCode==LEFT){song[currentSong].skip( -1000 );}} //Skip backwards 1 second (1000 milliseconds)
  //
  if ( key=='s' || key=='S' ) { //Stop Button
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    //} else if (){
     // song[currentSong].rewind();
    } else {
      song[currentSong].rewind();
    }
  }//End Stop Button
  //
  if ( key=='n' || key=='N' ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      playlistArrayErrorN();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      playlistArrayErrorN();
      song[currentSong].play();
    }
  }//End Next Button
  //
  if ( key=='b' || key=='B' ){
  if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      playlistArrayErrorB();
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      playlistArrayErrorB();
      song[currentSong].play();
    }
  }
}
// Global Variables
Boolean paper=false;
float drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight;
//
public void Newpaper()
{
  fill(backgroundC);
  noStroke();
  if (paper==true){rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);paper=false;}
  stroke(reset);
}
public void playlistArrayErrorN()
{
  if ( currentSong == numberOfSongs - 1 ) { //Throws error: ArrayIndexOutOfBounds
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong++;
      }//End Catch "ArrayIndexOutOfBounds"
}
//
public void playlistArrayErrorB()
{
  if ( currentSong == numberOfSongs - numberOfSongs ) { //Throws error: ArrayIndexOutOfBounds
        currentSong = numberOfSongs - 1;
      } else {
        currentSong--;
      }//End Catch "ArrayIndexOutOfBounds"
}
public void population()
{
    //Population
  paper=true;
  drawSurfaceX =width/4;
  drawSurfaceY = height/10;
  drawSurfaceWidth = width*3/4;
  drawSurfaceHeight = height*9/10;
  diameter = width/30;
  //
  Newpaper();
  //
  quitBX = width*9/10;
  quitBY = height*0;
  quitBWidth = width/10;
  quitBHeight = height/10;
  //
  NpaperX = width*8/10;
  NpaperY = height*0;
  NpaperWidth = quitBWidth;
  NpaperHeight = quitBHeight;
  //
  toolsX = width*0;
  toolsY = height/10;
  toolsWidth = width/16;
  toolsHeight = height/10;
  //
  //line tool
  DlineX1 = width/15;
  DlineY1 = height/10;
  DlineWidth =width/18;
  DlineHeight = height/10;
  //rect tool
  DlineX2 = width*11/90;
  DlineY2 = height/10;
  //tri tool
  DlineX3 = width*16/90;
  DlineY3 = height/10;
  //eraser
  eraserX = width*7/10;
  eraserY = 0;
  //
  //colour Bar
  colourX = 0;
  colourY = height/5+5;
  colourW = width/16;
  colourH = height/10;
  CselW = width/45;
  //Red
  redX = width/15;
  redY = height/5+5;
  //Blue
  blueX = width*4/45;
  blueY = height/5+5;
  //Yellow
  yellowX = width/9;
  yellowY= redY;
  //Purple
  purpleX = width*2/15;
  purpleY = redY;
  //Green
  greenX = width*7/45;
  greenY = redY;
  //Orange
  orangeX = width*8/45;
  orangeY = redY;
  //Black
  blackX = width*1/5;
  blackY = redY;
  //White
  whiteX = width*2/9;
  whiteY = redY;
  //BGbar
  BGX = 0;
  BGY = height*3/10+10;
  BGW = width/16;
  BGH = height/10;
  //
  BGWhiteX = width/15;
  BGWhiteY = BGY;
  BGWidth = width/18;
  BGHeight = height/10;
  //
  BGGreyX = width*11/90;
  BGGreyY = BGY;
  //
  BGBlackX = width*16/90;
  BGBlackY = BGY;
  //
  HorX = width/4;
  HorY = 0;
  HorW = width;
  HorH = height/10;
  VerX = width/4-54;
  VerY = 0;
  VerW = 54;
  VerH = height;
  //
  temX = 0;
  temY = height*4/10+15;
  temW = width/16;
  temH = height/10;
  //
  exX1 = width/15;
  exY1 = temY;
  exW = width/18;
  exH = height/10;
  //
  exX2 = width*11/90;
  exY2 = temY;
  //
  exX3 = width*16/90;
  exY3 = temY;
  //
  biaoqing1 = loadImage("biaoqing1.png");
  biaoqing2 = loadImage("biaoqing2.png");
  biaoqing3 = loadImage("biaoqing3.png");
  //
  MuBarX = 0;
  MuBarY = height*5/10+20;
  MuBarW = width/16;
  MuBarH = height/10;
  //
  NextS = loadImage("fastForward.png");
  LastS = loadImage("fastBack.png");
  PlayS = loadImage("play.png");
  PauseS = loadImage("pause.png");
  LoopS = loadImage("loop.png");
  OrderS = loadImage("order.png");
  //
  LSX = width/15;
  LSY = height*5/10+20;
  MBBW = width/18;
  MBBH = height/10;
  //
  PSX = width*11/90;
  PSY = LSY;
  //
  NSX = width*16/90;
  NSY = LSY;
  //
  LoopSX = width*11/90;
  LoopSY = height*6/10+25;
  //
  hintLX = 0;
  hintLY = height*6/10+25;
}
// Global Variables
String quitBString="Quit", secTextString="new paper", tools="tools", eraser="Eraser", colour="colour", BG="background", temT="templates";
//Music Text
String JukeBox="Juke Box", Hint1="Looping", Hint2="Use Left/Right key to fast backward/forward, Space to play/stop";



//
public void textSetup()
{
  font = createFont ("Arial", intilSize);
}
public void tools() 
{
  if (draw==true && lineD==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) {line (mouseX, mouseY, pmouseX, pmouseY);println("lineD");}
  fill(DrawingColour);
  noStroke();
  if (draw==true && rectD==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) rect(mouseX-10, mouseY-10, 20, 20);
  if (draw==true && triD==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) triangle(mouseX-12, mouseY+12, mouseX, mouseY-12, mouseX+12, mouseY+12);
  //Eraser
  fill(backgroundC);
  if (draw==true && eraserOn==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) ellipse(mouseX, mouseY, diameter, diameter);
  stroke(reset);
}
//
public void DrawingColour()
{
  
}
  public void settings() {  size(960, 540); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "FinalProject" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
