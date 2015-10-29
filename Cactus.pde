class Cactus {
  //Global variables
  float x1;
  float a1;
  float s1;

  //Constructor
  Cactus(float x_, float a_, float s_) {
    x1=x_;
    a1=a_;
    s1=s_;
  }

  //Draws things related to cactus
  void update(float gravity) {

    //Cactus body
    fill(23, 108, 7);
    ellipse(x1, 175, 50, 50);

//    //determin if there is a hit
//    float a = dinoY - 170;
//    float b = 50 - x1;
//    distance = sqrt(pow(a, 2) +pow(b, 2) );

    //put the cactus back on screen
    if (x1<-25) {
      x1=1300;
      s1=-0.1;
    }

    //Makes the cactus moves
    s1=s1+a1;
    x1=x1+s1;
  }
  
  //get xx
  //Purpose: to return the x position of the cactus
  float getX(){
    
    return x1;
    
  }
}