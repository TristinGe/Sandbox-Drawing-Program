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
  if (mouseX>=toolsX && mouseX<=toolsX+toolsWidth && mouseY>=toolsY && mouseY<=toolsY+toolsHeight){if(toolBarOn == false) {toolBarOn=true;toolBarReset=false;println("On");} else {toolBarOn=false;toolBarReset=true;println("Off");}}//End draw boolean}
}
//still not working

void toolsele()
{
  if (mouseX>=DlineX1 && mouseX<=DlineX1+DlineWidth && mouseY>=DlineY1 && mouseY<=DlineY1+DlineHeight){lineD=true;rectD=false;triD=false;eraserOn=false;}
  if (mouseX>=DlineX2 && mouseX<=DlineX2+DlineWidth && mouseY>=DlineY2 && mouseY<=DlineY2+DlineHeight){lineD=false;rectD=true;triD=false;eraserOn=false;}
  if (mouseX>=DlineX3 && mouseX<=DlineX3+DlineWidth && mouseY>=DlineY3 && mouseY<=DlineY3+DlineHeight){lineD=false;rectD=false;triD=true;eraserOn=false;}
  if (mouseX>=eraserX && mouseX<=eraserX+quitBWidth && mouseY>=eraserY && mouseY<=eraserY+quitBHeight){lineD=false;rectD=false;triD=false;eraserOn=true;}
}
