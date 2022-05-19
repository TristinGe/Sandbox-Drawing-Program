void mousepress()
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
  if (mouseX>=toolsX && mouseX<=toolsX+toolsWidth && mouseY>=toolsY && mouseY<=toolsY+toolsHeight && toolBarOn==false)toolBarOn=true;println("true");
   //{if (toolBarOn=true){toolBarOn=true;println("true");}else{toolBarOn=false;println("false");}}
  //if (mouseX>=toolsX && mouseX<=toolsX+toolsWidth && mouseY>=toolsY && mouseY<=toolsY+toolsHeight && toolBarOn==true){if(toolBarOn=true){toolBarOn=false;} else {toolBarOn=false;}};println("false");
}
