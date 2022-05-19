void quit() 
{
  //Quit button
  if (mouseX>=quitBX && mouseX<=quitBX+quitBWidth && mouseY>=quitBY && mouseY<=quitBY+quitBHeight) {quitBcolour = red;
  } else {quitBcolour=black;}
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
void Newpaper1(){
  //Second Text
  fill(white);
  rect(secTextX, secTextY, secTextWidth, secTextHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(secTextString, secTextX, secTextY, secTextWidth, secTextHeight);
  fill(white);}
  //
  //
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
  if (mouseX>=secTextX && mouseX<=secTextX+secTextWidth && mouseY>=secTextY && mouseY<=secTextY+secTextHeight)paper=true;
}
