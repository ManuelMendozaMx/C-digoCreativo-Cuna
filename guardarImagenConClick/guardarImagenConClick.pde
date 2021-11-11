//Arreglos -> Espacio de memoria que nos permite almacenar varios objetos del mismo tipo
float posX = 10;
float posY = 50;
int cantidad = 500;
float[] posicionesX = new float[cantidad];
float[] dirX = new float[cantidad];
float[] dirY = new float[cantidad];
float[] posicionesY = new float[cantidad];
float[] tams = new float[cantidad];
color relleno = color(20, 100, 90);
color[] colores = new color[cantidad];
float direccion = 2;
void setup() {
  size(600, 600);
  for (int i =0; i< cantidad; i++) {
    posicionesY[i] = random(0, height);
    posicionesX[i] = random(0, width);
    tams[i] = random(10, 50);
    colores[i] = color(random(0, 255), random(0, 255), random(0, 255));
    dirX[i] = random(1, 5);
    dirY[i] = random(1, 5);
  }
  //Método random()
  //Nos devuelve un número aleatorio
  float valor = random(1, 10);
  //println(valor);
}

void draw() {

  background(255);

  for (int i=0; i< cantidad; i++) {
    fill(colores[i]);
    ellipse(posicionesX[i], posicionesY[i], tams[i], tams[i]);
    posicionesX[i] += dirX[i];
    posicionesY[i] += dirY[i];
    if (posicionesX[i]> width ) {
      dirX[i] *= -1;
    }
    if (posicionesX[i]<0) {
      dirX[i] *=-1;
    }
    if (posicionesY[i]>height) {
      dirY[i] *=-1;
    }
    if (posicionesY[i]<0) {
      dirY[i] *=-1;
    }
  }
}
