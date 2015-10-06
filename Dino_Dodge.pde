int x;
//runs once
void setup(){
  size(800,200);
  
  noStroke();
}
//runs repetedly
void draw(){
  fill(23,108,7);
  
  background(255);
  
  
  
  ellipse(775,175,50,50);
 
    //CrossHairs
    stroke(0);
  fill(255, 255, 255);
  ellipse(mouseX, mouseY, 5, 5);
  line(mouseX, mouseY - 20, mouseX, mouseY + 20);
  line(mouseX - 20, mouseY, mouseX + 20, mouseY);
    fill(0);
  text("X "+mouseX, mouseX+10, mouseY+10);
  text("Y "+mouseY, mouseX+10, mouseY+20);

  println("Y:"+mouseY);  
  println("X:"+mouseX);
}