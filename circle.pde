int Xspeed = 2;
int Yspeed = 4;
int Xspeedtwo = 4;
int Yspeedtwo = 6;
int size = 50;
int xPosition ;
int yPosition ;
int radius;

int xTwo ;
int yTwo ;
//int speed = 30;



void setup(){
  size (400,400);
  
  //background (255); MOVED it to voidDraw()
  
  ellipseMode(CENTER); //make sure its EXACTLY inthe center
  
  //Placed here so it doesnt go back to the CENTER of the canvas
  xPosition = height/2;
  yPosition = width/2;
  xTwo = height/3;
  yTwo = height/3;

  
}

void draw(){
  //xPosition = height/2;
  //yPosition = width/2;
  
  background (255);
  ellipse (xPosition, yPosition, size, size); // x,y, size, size);
  fill(255);
  
 
  xPosition = xPosition + Xspeed;
  yPosition = yPosition + Yspeed;

  
 //changes the x position of the ellipse, sets boundaries on the x axis
  if (xPosition - radius < 0 || xPosition > width){ // || = or, && = and
    Xspeed = - Xspeed;
  }
  
  if (yPosition < 0 || yPosition > width){
        Yspeed = - Yspeed;
  }
  
   ellipse (xTwo, yTwo, size, size); 
   fill(255);
  
   xTwo = xTwo +Xspeedtwo;
   yTwo = yTwo +Yspeedtwo;


  
 //changes the x position of the ellipse, sets boundaries on the x axis
  if (xTwo < 0 || xTwo > width){ // || = or, && = and
    Xspeedtwo = - Xspeedtwo;
  }
  
  if (yTwo < 0 || yTwo > width){
       Yspeedtwo = - Yspeedtwo;
  } 
}
