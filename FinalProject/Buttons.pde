void quit() 
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
void Newpaper1() {
  //Second Text
  fill(white);
  rect(NpaperX, NpaperY, NpaperWidth, NpaperHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(secTextString, NpaperX, NpaperY, NpaperWidth, NpaperHeight);
  fill(white);}
//
//
void tool()
{
  if (mouseX>=toolsX && mouseX<=toolsX+toolsWidth && mouseY>=toolsY && mouseY<=toolsY+toolsHeight) {
    fill(buttonBlue);} else {fill(white);}
  //fill(quitBcolour);
  noStroke(); //remove rect() outline
  rect(toolsX, toolsY, toolsWidth, toolsHeight);
  stroke(reset);
  //
  //Quit Button Text
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(tools, toolsX, toolsY, toolsWidth, toolsHeight);}
//
void toolBar()
{
  if (toolBarOn==true) {
    noStroke();
    //pencil
    fill(white);
    rect(DlineX1, DlineY1, DlineWidth, DlineHeight); 
    //rect
    fill(lgrey);
    rect(DlineX2, DlineY2, DlineWidth, DlineHeight); 
    //tri
    fill(white);
    rect(DlineX3, DlineY3, DlineWidth, DlineHeight); 
    
    //ellipse(elineX, elineY, elineD, elineD);
    stroke(reset);}
    if (toolBarReset == true) {
   noStroke();
   fill(grey);
      rect(DlineX1, DlineY1, DlineWidth*3, DlineHeight);
      fill(white);
      stroke(reset);
  }
}
