void tools() 
{
  fill(black);
  if (draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) line (mouseX, mouseY, pmouseX, pmouseY);//line draeing
  if (draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) triangle(mouseX-20, mouseY+20, mouseX, mouseY-20, mouseX+20, mouseY+20);//circle drawing
  if (draw==true && mouseX>=drawSurfaceX && mouseX<=drawSurfaceX+drawSurfaceWidth && mouseY>=drawSurfaceY && mouseY<=drawSurfaceY+drawSurfaceHeight) ellipse(mouseX, mouseY, diameter, diameter);//circle drawing
  fill(white);
}
