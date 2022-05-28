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
  if (mouseX>=toolsX && mouseX<=toolsX+toolsWidth && mouseY>=toolsY && mouseY<=toolsY+toolsHeight){if(toolBarOn == false) {toolBarOn=true;toolBarReset=false;} else {toolBarOn=false;toolBarReset=true;}}
}
//
void toolsele()
{
  if (mouseX>=DlineX1 && mouseX<=DlineX1+DlineWidth && mouseY>=DlineY1 && mouseY<=DlineY1+DlineHeight){lineD=true;rectD=false;triD=false;eraserOn=false;println("line");}
  if (mouseX>=DlineX2 && mouseX<=DlineX2+DlineWidth && mouseY>=DlineY2 && mouseY<=DlineY2+DlineHeight){lineD=false;rectD=true;triD=false;eraserOn=false;}
  if (mouseX>=DlineX3 && mouseX<=DlineX3+DlineWidth && mouseY>=DlineY3 && mouseY<=DlineY3+DlineHeight){lineD=false;rectD=false;triD=true;eraserOn=false;}
  if (mouseX>=eraserX && mouseX<=eraserX+quitBWidth && mouseY>=eraserY && mouseY<=eraserY+quitBHeight){lineD=false;rectD=false;triD=false;eraserOn=true;}
}
//
void ColorBarPress()
{
  if (mouseX>=colourX && mouseX<=colourX+colourW && mouseY>=colourY && mouseY<=colourY+colourH){if(ColourBOn == false) {ColourBOn=true;ColourBReset=false;println("On");} else {ColourBOn=false;ColourBReset=true;println("Off");}}
  if (mouseX>=redX && mouseX<=redX+CselW && mouseY>=redY && mouseY<=redY+colourH && ColourBOn==true){DrawingColour=red;}
  if (mouseX>=blueX && mouseX<=blueX+CselW && mouseY>=blueY && mouseY<=blueY+colourH && ColourBOn==true){DrawingColour=Dblue;}
  if (mouseX>=yellowX && mouseX<=yellowX+CselW && mouseY>=yellowY && mouseY<=yellowY+colourH && ColourBOn==true){DrawingColour=Dyellow;}
  if (mouseX>=purpleX && mouseX<=purpleX+CselW && mouseY>=purpleY && mouseY<=purpleY+colourH && ColourBOn==true){DrawingColour=Dpurple;}
  if (mouseX>=greenX && mouseX<=greenX+CselW && mouseY>=greenY && mouseY<=greenY+colourH && ColourBOn==true){DrawingColour=Dgreen;}
  if (mouseX>=orangeX && mouseX<=orangeX+CselW && mouseY>=orangeY && mouseY<=orangeY+colourH && ColourBOn==true){DrawingColour=Dorange;}
  if (mouseX>=blackX && mouseX<=blackX+CselW && mouseY>=blackY && mouseY<=blackY+colourH && ColourBOn==true){DrawingColour=black;}
}
