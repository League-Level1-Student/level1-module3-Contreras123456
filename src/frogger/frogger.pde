int x = 210;
int y = 580;
int hopDistance = 30;
Car car2 = new Car(650,100, 150, 5);
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
  car2.carLeft();
  car3.carRight();
  car4.carLeft();
  car2.display();
  car3.display();
  car4.display();
  boolean intersects = intersects(car2);
  boolean intersects2 = intersects(car3);
  boolean intersects3 = intersects(car4);
  if(intersects==true){
    y = 580;
  }
  else if(intersects2==true){
    y = 580;
  } else if(intersects3==true){
    y = 580;
  }
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
  void carLeft(){
    carX-=speed;
  if(carX<0){
    carX = 800;
  }
  }
  void carRight(){
    carX+=speed;
    if(carX>800){
      carX = 0;
    }
  }
  int getX(){
    return carX;
  }
 int getY(){
    return carY; 
  }
  int getSize(){
    return size;
  }
  
}

boolean intersects(Car car) {
 if ((y > car.getY() && y < car.getY()+50) &&
                (x > car.getX() && x < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}
