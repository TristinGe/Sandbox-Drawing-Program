void mousepressToolBar()
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
void toolsele()
{
  if (mouseX>=DlineX1 && mouseX<=DlineX1+DlineWidth && mouseY>=DlineY1 && mouseY<=DlineY1+DlineHeight && toolBarOn==true){lineD=true;rectD=false;triD=false;eraserOn=false;}
  if (mouseX>=DlineX2 && mouseX<=DlineX2+DlineWidth && mouseY>=DlineY2 && mouseY<=DlineY2+DlineHeight && toolBarOn==true){lineD=false;rectD=true;triD=false;eraserOn=false;}
  if (mouseX>=DlineX3 && mouseX<=DlineX3+DlineWidth && mouseY>=DlineY3 && mouseY<=DlineY3+DlineHeight && toolBarOn==true){lineD=false;rectD=false;triD=true;eraserOn=false;}
  if (mouseX>=eraserX && mouseX<=eraserX+quitBWidth && mouseY>=eraserY && mouseY<=eraserY+quitBHeight){lineD=false;rectD=false;triD=false;eraserOn=true;}}
//
void ColorBarPress()
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
void BackGroundbarPress()
{
  if (mouseX>=BGX && mouseX<=BGX+BGW && mouseY>=BGY && mouseY<=BGY+BGH){if(BGbar == false) {BGbar=true;BGbarReset=false;} else {BGbar=false;BGbarReset=true;}}
  if (mouseX>=BGWhiteX && mouseX<=BGWhiteX+BGWidth && mouseY>=BGY && mouseY<=BGWhiteY+BGH && BGbar==true){backgroundC=white;}
  if (mouseX>=BGGreyX && mouseX<=BGGreyX+BGWidth && mouseY>=BGY && mouseY<=BGGreyY+BGH && BGbar==true){backgroundC=lgrey;}
  if (mouseX>=BGBlackX && mouseX<=BGBlackX+BGWidth && mouseY>=BGY && mouseY<=BGBlackY+BGH && BGbar==true){backgroundC=black;}
}
//
void TempBarPress()
{
if (mouseX>=temX && mouseX<=temX+temW && mouseY>=temY && mouseY<=temY+temH){if(exTemp == false) {exTemp=true;exTempReset=false;println("On");} else {exTemp=false;exTempReset=true;println("Off");}}
if (mouseX>=exX1 && mouseX<=exX1+exW && mouseY>=exY1 && mouseY<=exY1+exH && exTemp==true){image(biaoqing1, drawSurfaceX*2-drawSurfaceX/2, drawSurfaceY);}
if (mouseX>=exX2 && mouseX<=exX2+exW && mouseY>=exY2 && mouseY<=exY2+exH && exTemp==true){image(biaoqing2, drawSurfaceX*2-drawSurfaceX/2, drawSurfaceY);}
if (mouseX>=exX3 && mouseX<=exX3+exW && mouseY>=exY3 && mouseY<=exY3+exH && exTemp==true){image(biaoqing3, drawSurfaceX*2-drawSurfaceX/2, drawSurfaceY);}
}
//
void MBPress()
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
      song[currentSong].play();if(song[currentSong].position()>= song[currentSong].length()-2 ){ playlistArrayErrorN();song[currentSong].play();}}
    }} 
 
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
    if(LoopI==false){LoopI=true;LoopO=false;} else {LoopI=false;LoopO=true;}
  }
}
