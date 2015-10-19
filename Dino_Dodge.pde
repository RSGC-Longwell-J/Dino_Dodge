//Variables
float X1;
float X2;
float a1;
float s1;
float s2;
float cl;
float dinoY;
float dinoS;
float dinoA;
float gravity;
float distance;
float distance2;

//runs once
void setup() {
  size(1000, 300);

  //Variable value
  X1 = 1100;
  X2= 1300;
  a1=-0.1;
  s1=-0.1;
  s2=-0.1;
  cl=950;
  dinoS=0;
  dinoA=0;
  gravity=0.00;
}

//Runs repetedly
void draw() {
  fill(82, 248, 252);

  //Background color
  background(255);

  //Ground
  rect(0, 0, 1000, 200);

  fill(0, 131, 58);
  rect(0, 200, 1000, 200);

  line(0, 200, 1000, 200);

  //Cactuses
  noStroke();
  fill(23, 108, 7);
  ellipse(X1, 175, 50, 50);
  ellipse(X2, 165, 50, 80);

  //Cloud
  fill(255, 255, 255);
  ellipse(cl, 75, 60, 25);

  //Repeating variables values
  s1=s1+a1;
  s2=s2+a1;
  X1=X1+s1;
  X2=X2+s1;
  cl=cl-0.1;

  // move the dino
  dinoA+=dinoA+gravity;
  dinoS=dinoS+dinoA;
  dinoY=dinoY+dinoS;

  //show on screen
  fill(0);
  textSize(12);
  text("dinoY is "+dinoY, 150, 25);
  text("dinoS is "+dinoS, 150, 50);
  text("dinoA is "+dinoA, 150, 75);
  text("distance is "+distance, 150, 100);
  text("distance2 is "+distance2, 150, 125);
  
  //determin whether there is a hit
  float a = dinoY - 170;
  float b = 50 - X1;
  distance = sqrt(pow(a,2) +pow(b,2) );
  
  float c = dinoY - 170;
  float d = 50 - X2;
  distance2 = sqrt(pow(c,2) +pow(d,2) );
   
   
  if(distance<(30+25)){
    textSize(80);
    text("HIT", 100,100);
  }  
    if(distance2<(30+25)){
    textSize(80);
    text("HIT", 100,100);
  }
  //Put the cactuses and clouds back on screen
  if (cl<-10) {
    cl=950;
   s1=-0.1;
  }
  if (X1<-25) {
    X1=1300;
    s1=-0.1;
  }

  fill(11, 103, 23);
  if (X2<-25) {
    X2= 1300;
    s2=-0.1;
  }

  //Stop the dino if it hits the ground
  if (dinoY > 170) {
    dinoS=0;
    dinoA=-0;
    dinoY=170;
  }

  //Dino
  fill(255, 255, 255);
  ellipse(50, dinoY, 60, 60);
}

//Jumps when pressed

void keyPressed() {   
  dinoA=-2;
  gravity=0.25;
}