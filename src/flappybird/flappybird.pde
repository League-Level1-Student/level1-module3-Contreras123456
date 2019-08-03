  int x = 100;
  int y = 50;
  int birdYVelocity = 100;
  int gravity = 3;
  int pipe = 130;
  int upperPipeHeight = (int) random(100,300);
  int pipeGap = 150;
  int lowerY = upperPipeHeight + pipeGap;
  boolean xd = true;
  int score = 0;
 void setup(){
  size(400,500);
  pipe = 400;
}
void draw(){
  if(xd) {
    background(3,255,236);
    fill(254,255,3);
    stroke(0,0,0);
    y += gravity;
    ellipse(x,y,20,20);
    fill(3,255,71);
    rect(pipe,0,50,upperPipeHeight);
    lowerY = upperPipeHeight + pipeGap;
    rect(pipe,lowerY,50,500-lowerY);
    pipe -= 5;
  
    if(pipe<= -50){
      teleportPipes();
    }
    
    if(hitGround()||intersectsPipes()){
      xd = false;
    }
    if(x==pipe){
      score++;
    }
  }
  rect(0,450,1000,100);
  fill(0,0,0);
  text(score, 150, 10);
}

void mousePressed(){
  y -= birdYVelocity;
}
void teleportPipes(){
  pipe = 400;
  upperPipeHeight = (int) random(100,300);
  
}
boolean intersectsPipes() { 
         if (y < upperPipeHeight && x > pipe && x < (pipe+50)){
            return true; }
        else if (y>lowerY && x > pipe && x < (pipe+50)) {
            return true; }
        else { return false; }
}
boolean hitGround(){
  if(y>=450){
    return true;
  } else {
    return false;
  }
}
