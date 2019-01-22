float supIzq;
float supDer;
float infIzq;
float infDer;

float dir = 1; 

float cant; 
float tam = 20;

void setup() {
  size(700, 700);
  rectMode(CENTER);
}

void draw() {
  background(0);
  
  cant = mouseX/10;
  tam = mouseY/10;
  
  
  for(int i = 0; i < cant; i++){
    for (int j = 0; j < cant; j++){
      figura(i*175*2, j*175*2);
    }
  }
  //figura(175, 175);
  //figura(175, 525);
  //figura(525, 525);
  //figura(525, 175);
  
  if (key == '1') {
    dir = -1;
  }
  if (key == '2') {
    dir = 1;
  }
}

void figura(int posX, int posY) {
  for (int i = 0; i < 20; i++) {
    strokeWeight(i/2);
    stroke(i*5, 0, 0);
    noFill();
    pushMatrix();
    translate(posX, posY);
    rotate(radians(5*i)*frameCount/80 * dir);
    rect(0, 0, i*tam, i*tam);
    popMatrix();
  }
}