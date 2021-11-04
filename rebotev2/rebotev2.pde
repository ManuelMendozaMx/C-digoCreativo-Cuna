float posX = 0;
float velocidad = 3;
float tam = 5;
float velTam = 3;
float canalR = 0;
float velCanalR = 1;
float canalG = 0;
float velCanalG = 2;
float canalB = 0;
float velCanalB = 3;
void setup() {
  size(600, 600);
}

void  draw() {
  background(canalR,canalG,canalB);
  ellipse(posX, height/2, tam, tam);
  posX = posX + velocidad;
  if (posX>width) {
    velocidad = -3;
  }
  if (posX<0) {
    velocidad = 3;
  }
  tam = tam + velTam;
  if(tam>300 ){
    velTam = -3;
  }
  if(tam<5){
    velTam = 3;
  }
  canalR = canalR + velCanalR;
  if(canalR >255){
    velCanalR = -1;
  }
   if(canalR <0){
    velCanalR = 1;
  }
  canalG = canalG + velCanalG;
  if(canalG > 255){
    velCanalG = -1;
  }
  if(canalG < 0){
    velCanalG = 1;
  }
  canalB = canalB + velCanalB;
  if(canalB>255){
    velCanalB = -3;
  }
  if(canalB<0){
    velCanalB = 3;
  }
}
