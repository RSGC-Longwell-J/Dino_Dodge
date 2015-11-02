class Cactus {
  //Global variables
  float x1;
  float y1;
  float a1;
  float s1;
  float r1;

  //Constructor
  Cactus(float x_, float a_, float s_) {
    x1=x_;
    y1=175;
    a1=a_;
    s1=s_;
    r1=25;
  }

  //Draws things related to cactus
  void update(float gravity) {

    //Cactus body
    fill(23, 108, 7);
    ellipse(x1, y1, r1*2, r1*2);

    //put the cactus back on screen
    if (x1<-25) {
      x1=1300;
      s1=-0.1;
    }

    //Makes the cactus moves
    s1=s1+a1;
    x1=x1+s1;
  }

  //get x
  //Purpose: to return the x position of the cactus
  float getX() {

    return x1;
   
  }
  
  float getY(){
  return y1;
  
  }
  
  float getR() {
    return r1;
  }
}