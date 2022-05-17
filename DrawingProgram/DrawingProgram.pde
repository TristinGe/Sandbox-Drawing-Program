// Global Variables
Boolean draw = false;
float drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight, diameter;
float quitBX, quitBY, quitBWidth, quitBHeight;
int reset=1, intilSize=55, size;
color white=#FFFFFF, black=#000000, red=#FF0303, quitBcolour;
PFont font;
String quitBString="Quit", secTextString="?";
float secTextX, secTextY, secTextWidth, secTextHeight;
//
void setup() 
{
  size(500, 600); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  //Should declare landscape, portrait, or square
  //
  //Population
  drawSurfaceX =width*0;
  drawSurfaceY = height*0;
  drawSurfaceWidth = width*3/4;
  drawSurfaceHeight = height*4/5;
  diameter = width/100;
  //
  rect(drawSurfaceX, drawSurfaceY, drawSurfaceWidth, drawSurfaceHeight);
  //
  quitBX = width*18/20;
  quitBY = height*0;
  quitBWidth = width*2/20;
  quitBHeight = height/10;
  //
  secTextX = quitBX;
  secTextY = height/10;
  secTextWidth = quitBWidth;
  secTextHeight = quitBHeight;
  font = createFont ("Arial", intilSize);
}

void draw() 
{
  if (draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) line (mouseX, mouseY, pmouseX, pmouseY);//line draeing
  if (draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) ellipse(mouseX, mouseY, diameter, diameter);//circle drawing
  //
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
  text(quitBString, quitBX, quitBY, quitBWidth, quitBHeight);
  //
  //Second Text
  fill(white);
  rect(secTextX, secTextY, secTextWidth, secTextHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER);
  size = 20;
  textFont(font, size);
  text(secTextString, secTextX, secTextY, secTextWidth, secTextHeight);
  fill(white);
}//End draw()

void keyPressed() 
{
  
}//End keyPressed()

void mousePressed() 
{
  //Paper-Button
  if ( mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) 
  {if(draw == true) {draw=false;} else {draw=true;}//End draw boolean
  }//End Paper-Button
  //
  if (mouseX>=quitBX && mouseX<=quitBX+quitBWidth && mouseY>=quitBY && mouseY<=quitBY+quitBHeight)exit();
  
}//End mousePressed()
//
//End Main
