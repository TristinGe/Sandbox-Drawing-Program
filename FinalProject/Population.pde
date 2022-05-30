void population()
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
}
