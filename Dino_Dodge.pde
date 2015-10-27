//Variables
Cactus c1;//Makes a place in memory to keep cactus
Cactus c2;
Dino d1;
float cl;
float gravity;
float distance;
float distance2;

//runs once
void setup() {
  size(1000, 300);

  //Variable value
  c1=new Cactus(1100, -0.1, -1);
  c2=new Cactus(1200, -0.1, -1);
  d1=new Dino(170,-0,0);
    cl=950;
  gravity=0.06;
}

//Runs repetedly
void draw() {

  noStroke();


  //Ground
  background(82, 248, 252);
  c1.update(gravity);
  c2.update(gravity);
  d1.update(gravity);

  fill(0, 131, 58);
  rect(0, 200, 1000, 200);

  //Cloud
  fill(255, 255, 255);
  ellipse(cl, 75, 60, 25);

  //Repeating variables values
  cl=cl-0.1;



  //show on screen
  fill(0);
  textSize(12);
  text("distance is "+distance, 150, 100);
  text("distance2 is "+distance2, 150, 125);

  if (distance<(30+25)) {
    textSize(80);
    text("HIT", 100, 100);
  }
  if (distance2<(30+25)) {
    textSize(80);
    text("HIT", 100, 100);
  }
}