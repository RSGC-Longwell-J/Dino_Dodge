class Dino {
  //Global variables
  float dinoY;
  float dinoS;
  float dinoA;
  float dinoX;
  float dinoR;

  //constructor
  Dino(float dinoy_, float dinoa_, float dinos_) {

    dinoY=dinoy_;
    dinoA=dinoa_;
    dinoS=dinos_;
    dinoX=50;
    dinoR=30;
    
  }

  //Draws things related to Dino
  void update(float gravity) {

    //Dino
    fill(255, 255, 255);
    ellipse(dinoX, dinoY, dinoR*2 ,dinoR*2);


    //Stop the dino if it hits the ground
    if (dinoY > 170) {
      dinoS=0;
      dinoA=0;
      dinoY=170;
    }

    // move the dino
    dinoA=dinoA+gravity;
    dinoS=dinoS+dinoA;
    dinoY=dinoY+dinoS;

    fill(0);
    textSize(12);
    text("dinoY is "+dinoY, 150, 25);
    text("dinoS is "+dinoS, 150, 50);
    text("dinoA is "+dinoA, 150, 75);
  }

  //set y Value outside of class
  float getY() {
    return dinoY;
  }
  
  //set acceleration outside of class
  void setA(float newA_) {
    dinoA = newA_;
  }
  boolean isTouching(Cactus c) {
    
    float a=dinoY-c.getY();
    float b=dinoX-c.getX();
    distance=sqrt(a*a+b*b);
    
    if (distance<(dinoR+ c.getR() *.75) ) {
      return true;
    }
    
    return false;
  }
  
}