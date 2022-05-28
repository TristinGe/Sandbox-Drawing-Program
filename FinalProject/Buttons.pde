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
  size = 18;
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
    fill(black);
    ellipse(DlineX1+DlineX1*0.43, DlineY1+DlineY1*0.5, DlineWidth/9, DlineWidth/9);
    //rect
    fill(lgrey);
    rect(DlineX2, DlineY2, DlineWidth, DlineHeight); 
    fill(black);
    rect(DlineX2+DlineX1*0.5-25, DlineY2+DlineY1*0.5-20, DlineWidth-13, DlineHeight-13); 
    //tri
    fill(white);
    rect(DlineX3, DlineY3, DlineWidth, DlineHeight); 
    fill(black);
    triangle(DlineX3+DlineX1*0.5-25, DlineY3+DlineY1*0.5+20, DlineX3+DlineX1*0.5-5, DlineY3+DlineY1*0.5-20, DlineX3+DlineX1*0.5+15, DlineY3+DlineY1*0.5+20);
    //
    //ellipse(elineX, elineY, elineD, elineD);
    stroke(reset);}
    if (toolBarReset == true) {
   noStroke();
   fill(grey);
      rect(DlineX1, DlineY1, DlineWidth*3.1, DlineHeight);
      fill(white);
      stroke(reset);}}
//
void eraser()
{
  fill(white);
  rect(eraserX, eraserY, quitBWidth, quitBHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 18;
  textFont(font, 20);
  text(eraser, eraserX, eraserY, quitBWidth, quitBHeight);
  fill(white);
}
//
void colourBar() 
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
  }
  if(ColourBReset==true){
  fill(grey);
  noStroke();
  rect(redX, colourY, CselW*7.1, colourH);
  }
}
