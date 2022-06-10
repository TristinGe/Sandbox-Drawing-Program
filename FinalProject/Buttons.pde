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
void NewpaperB() {
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
  fill(white);}
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
    
    fill(white);
    rect(whiteX, whiteY, CselW, colourH);
  }
  if(ColourBReset==true){
  fill(grey);
  noStroke();
  rect(redX, colourY, CselW*8.1, colourH);}}
//
void BackGround()
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
  rect(BGWhiteX, BGWhiteY, BGWidth*3.1, BGH);}}
//
void templates()
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
    rect(exX1, exY1, exW*3.1, exH);
  }
}
//
void MusicBar()
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
      image(LoopS,LoopSX,LoopSY,MBBW,MBBH);}

  }
  if(MBreset==true){
    noStroke();
    fill(grey);
    rect(LSX,LSY,MBBW*3.1,MBBH);
    rect(LoopSX,LoopSY,MBBW,MBBH);
  }
}
//
void MBB()
{
  
}
  
