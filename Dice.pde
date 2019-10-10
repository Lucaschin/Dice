void setup()
{
  size(500, 500);
  textAlign(CENTER);
  noLoop();
  background(97);
  
}
void draw()
{
	background(97);
 int sum = 0;
  for (int y = 50; y <= 400; y +=50 )
  {
    for (int x = 40; x <= 400; x +=50)
    {
      stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
      fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
      Die ok = new Die(x,y);
      ok.roll();
      ok.show();
      sum += ok.value;
      
      
    }
  }
  text("Sum: " + sum, 250, 500);
}


   

void mousePressed()
{

    redraw();

  }
  class Die //models one single dice cube
  {
    int myX, myY,value;

    Die(int x, int y) //constructor
    {
    myX = x;
    myY= y;
    value = 1;
    }
    void roll()
    {
      value = (int)(Math.random()*6)+1;
    }

    void show()
    {
      rect(myX, myY, 50, 50, 50);
      fill(255);
      stroke(255);
      if(value == 1){
         ellipse(myX+23, myY+25, 5, 5);
         
           
     
      }
      if(value == 2){
         ellipse(myX+17, myY+18, 5, 5);
         ellipse(myX+28, myY+33, 5, 5);
         
           
     
      }
      if(value == 3){
         ellipse(myX+17, myY+18, 5, 5);
         ellipse(myX+31, myY+33, 5, 5);
         ellipse(myX+23, myY+25, 5, 5);
         
           
     
      }
      if(value == 4){
         ellipse(myX+15, myY+20, 5, 5);
         ellipse(myX+15, myY+40, 5, 5);
         ellipse(myX+30, myY+20, 5, 5);
         ellipse(myX+30, myY+40, 5, 5);
         
           
     
      }
      if(value == 5){
        ellipse(myX+23, myY+25, 5, 5); 
        ellipse(myX+15, myY+10, 5, 5);
         ellipse(myX+15, myY+40, 5, 5);
         ellipse(myX+30, myY+10, 5, 5);
         ellipse(myX+30, myY+40, 5, 5);
         
           
     
      }
      if(value == 6){
        
        ellipse(myX+15, myY+10, 5, 5);
         ellipse(myX+15, myY+40, 5, 5);
         ellipse(myX+30, myY+10, 5, 5);
         ellipse(myX+30, myY+40, 5, 5);
         ellipse(myX+15, myY+25, 5, 5);
         ellipse(myX+30, myY+25, 5, 5);
         
           
     
      }
    }
  }