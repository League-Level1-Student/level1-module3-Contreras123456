int x = 210;
int y = 580;
int hopDistance = 30;
Car car2 = new Car(650,150, 150, 5);
Car car3 = new Car(450,200,150,10);
Car car4 = new Car(250,350,150,3);
void setup(){
  size(800,600);
}
void draw(){
  background(0,146,255);
  fill(8,152,30);
  ellipse(x,y,25,25);
  outCanvas();
}
void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            y-=hopDistance;
        }
        else if(keyCode == DOWN)
        {
           y+=hopDistance; 
        }
        else if(keyCode == RIGHT)
        {
            x+=hopDistance;
        }
        else if(keyCode == LEFT)
        {
            x-=hopDistance;
        }
    }
}
void outCanvas(){
  if(x>775){
    x=775;
  } else if(x<25){
    x=25;
  } else if(y>575){
    y=575;
  } else if(y<25){
    y=25;
  }
}

public class Car{
  int carX;
  int carY;
  int size;
  int speed;
  Car(int x, int y, int size, int speed){
    carX = x;
    carY = y;
    this.size = size;
    this.speed = speed;
  }
  void display()
  {
    fill(0,255,0);
    rect(carX , carY, size, 50);
  }
}
