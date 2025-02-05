/*
Truman Evans
2/5/2025
Learning goal: Students will demonstrate their understanding of Object-Oriented Programming and arrays by designing a Die class,
creating an array of Die objects to form a dynamic grid, calculating and displaying the total value of the dice,
and customizing the presentation of their program through HTML elements.
*/
PImage ball, hurts, brown, barkley, mcduffie;    //initializing images
String[] play = {"Touchdown!", "1st Down!", "Incompletion :(", "Interception! Oh no! Disaster!"};
String outcome = "";
int value = 0;
int x = 280; 
int y = 550;

void setup() 
{
  size(600,600);
  noLoop();      //ensures draw() only runs once
  
  hurts = loadImage("jalenHurts.png");
  brown = loadImage("ajBrown.png");
  barkley = loadImage("saquonBarkley.png");       //initializing players
  mcduffie = loadImage("trentMcduffie.png");
  ball = loadImage("football.png");
  
  if (hurts == null) println("Error loading jalenHurts.png");
  if (brown == null) println("Error loading ajBrown.png");
  if (barkley == null) println("Error loading saquonBarkley.png");     // debugging: checking if images loaded
  if (mcduffie == null) println("Error loading trentMcduffie.png");
  if (ball == null) println("Error loading football.png");
}

void draw()
{
  background(38, 125, 11);   //green, field
  noStroke();
  
  fill(0,76,84);             //eagles teal, endzone
  rect(0, 52, 600, 149);     //endzone
  
  fill(255);                 //white, lines
  rect(0, 51, 600, 5);       //back end zone line
  rect(0, 201, 600, 5);      //front end zone line
  rect(0, 276, 600, 5);      //5 yard line
  rect(0, 351, 600, 5);      //10 yard line
  rect(0, 426, 600, 5);      //15 yard line
  rect(0, 501, 600, 5);      //20 yard line
  rect(0, 576, 600, 5);      //25 yard line
  rect(140, 216, 30, 5);      
  rect(140, 231, 30, 5); 
  rect(140, 246, 30, 5); 
  rect(140, 261, 30, 5); 
  rect(140, 291, 30, 5); 
  rect(140, 306, 30, 5); 
  rect(140, 321, 30, 5); 
  rect(140, 336, 30, 5); 
  rect(140, 366, 30, 5); 
  rect(140, 381, 30, 5); 
  rect(140, 396, 30, 5);     //yard lines
  rect(140, 411, 30, 5); 
  rect(140, 441, 30, 5); 
  rect(140, 456, 30, 5); 
  rect(140, 471, 30, 5); 
  rect(140, 486, 30, 5); 
  rect(140, 516, 30, 5); 
  rect(140, 531, 30, 5); 
  rect(140, 546, 30, 5); 
  rect(140, 561, 30, 5); 
  rect(140, 591, 30, 5);
  
  rect(430, 216, 30, 5);      
  rect(430, 231, 30, 5); 
  rect(430, 246, 30, 5); 
  rect(430, 261, 30, 5); 
  rect(430, 291, 30, 5); 
  rect(430, 306, 30, 5); 
  rect(430, 321, 30, 5); 
  rect(430, 336, 30, 5); 
  rect(430, 366, 30, 5); 
  rect(430, 381, 30, 5); 
  rect(430, 396, 30, 5);     //yard lines
  rect(430, 411, 30, 5); 
  rect(430, 441, 30, 5); 
  rect(430, 456, 30, 5); 
  rect(430, 471, 30, 5); 
  rect(430, 486, 30, 5); 
  rect(430, 516, 30, 5); 
  rect(430, 531, 30, 5); 
  rect(430, 546, 30, 5); 
  rect(430, 561, 30, 5); 
  rect(430, 591, 30, 5); 
  
  fill(224, 217, 16);        //yellow, uprights
  rect(300, 20, 10, 30, 5);
  rect(150, 20, 300, 10, 5); //uprights
  rect(150, 1, 10, 25, 5);
  rect(440, 1, 10, 25, 5);
  
  hurts.resize(100,59);
  image(hurts, 250, 500);    //jalen hurts
  brown.resize(80,59);
  image(brown, 470, 280);    //aj brown
  barkley.resize(110,62);
  image(barkley, 150, 120);  //saquon barkley
  mcduffie.resize(100,65);
  image(mcduffie, 80, 340); //trent mcduffie
  
  ball.resize(45,30);
  image(ball, x, y);


  fill(255);
  textSize(30);
  textAlign(CENTER);
  text(outcome, 300, 100);
  //System.out.print(value);
  //System.out.println(outcome);
  
}

void mousePressed()
{
  roll();
  redraw(); //resets when mouse is pressed
}

void roll()
{
  
    //outcome = "";
  value = (int) (Math.random()*4)+1;
  
    if(value == 1){
  x = 530;                     //brown, 1st down
  y = 320;
  
  outcome = play[1];          //1st down
}
else if(value == 2){
  x = 200;                    //barkley, touchdown
  y = 180;
  
  outcome = play[0];          //touchdown
  
}
else if(value == 3){
  x = 300;                    //nobody, incompletion
  y = 280;
  
  outcome = play[2];          //incompletion
}
else if(value == 4){
  x = 100;                   //cheifs guy, interception
  y = 400;
  
  outcome = play[3];         //interception
}
  //fill(255);
  //textSize(30);
  //textAlign(CENTER);
  //text(outcome, 300, 100);
  //System.out.print(value);
  //System.out.println(outcome);
  

  
}

void show()
{
  roll();
 
  
}

int getValue(){
  return value;
}
