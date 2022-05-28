void tools() 
{
  fill(black);
  if (draw==true && lineD==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) line (mouseX, mouseY, pmouseX, pmouseY);
  if (draw==true && rectD==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) rect(mouseX-10, mouseY-10, 20, 20);
  if (draw==true && triD==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) triangle(mouseX-12, mouseY+12, mouseX, mouseY-12, mouseX+12, mouseY+12);
  fill(white);
  noStroke();
  if (draw==true && eraserOn==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) ellipse(mouseX, mouseY, diameter, diameter);
  stroke(reset);
}
//
void colours()
{
  
}
