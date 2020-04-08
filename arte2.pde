PVector centroide;
float radio;
float angulo;

void setup(){
  size(600,600);
  
  centroide = new PVector(width/2,height/2);
  radio = 200;
  
  angulo = 0.0;
  
  frameRate(30);
  
}

void draw(){
  background(200);

  float xC,yC,x1,y1;
  
  for(int i = 0; i < 36; i++){
    xC = 0.9*radio * cos(radians(-angulo)) + centroide.x;
    yC = 0.9*radio * sin(radians(-angulo)) + centroide.y;
    x1 = radio * cos(radians(angulo + i*10)) + centroide.x;
    y1 = radio * sin(radians(angulo + i*10)) + centroide.y;
    
    line(x1,y1,xC,yC);
    
    fill(255);
    circle(x1,y1,5);
  }


  angulo += 0.5;
}
