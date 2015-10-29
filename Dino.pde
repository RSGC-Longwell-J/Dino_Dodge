class Dino {
  //Global variables
  float dinoY;
  float dinoS;
  float dinoA;

  //constructor
  Dino(float dinoy_, float dinoa_, float dinos_){
  
    dinoY=dinoy_;
    dinoA=dinoa_;
    dinoS=dinos_;
  }
  
//Draws things related to Dino
  void update(float gravity) {

    //Dino
    fill(255, 255, 255);
    ellipse(50, dinoY, 60, 60);


    //Stop the dino if it hits the ground
    if (dinoY > 170) {
      dinoS=0;
      dinoA=-0;
      dinoY=170;
    }

    // move the dino
    dinoA+=dinoA+gravity;
    dinoS=dinoS+dinoA;
    dinoY=dinoY+dinoS;
    
      fill(0);
  textSize(12);
  text("dinoY is "+dinoY, 150, 25);
  text("dinoS is "+dinoS, 150, 50);
  text("dinoA is "+dinoA, 150, 75);
  
  }
  
//vo//id keyPressed(){
//////dinoY=170;
//////dinoS=-1;
//}

}//end class