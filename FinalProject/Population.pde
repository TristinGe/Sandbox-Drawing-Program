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
  toolsWidth = width/19;
  toolsHeight = height/10;
  //
  //line tool
  DlineX1 = width/18;
  DlineY1 = height/10;
  DlineWidth =width/18;
  DlineHeight = height/10;
  //rect tool
  DlineX2 = width*2/18;
  DlineY2 = height/10;
  //tri tool
  DlineX3 = width*3/18;
  DlineY3 = height/10;
  //eraser
  eraserX = width*7/10;
  eraserY = 0;
}
