float posicionX = 100;
float direccion = 1;
float tam = 20;
float direccionTam = 1;
void setup() {
  //Esto e ejecuta 1 sola vez 
  size(600, 600);
}

void draw() {
  background(255);
  ellipse(posicionX, 300, tam, tam);
  posicionX = posicionX+ direccion;
  if (posicionX>width) {
    direccion = -1;
  }
  if (posicionX < 0) {
    direccion = 1;
  }
  tam  = tam + direccionTam;
  if(tam > 200){
    direccionTam = -1;
  }
  if(tam<10){
    direccionTam = 1;
  }
}
