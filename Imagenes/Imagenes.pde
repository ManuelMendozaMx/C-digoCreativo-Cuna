//Imagen
//PImage -> leer un archivo de imagen
PImage imagen; 
PImage sol;
int cantidad = 50;
float[] posX = new float[cantidad];
float[] posY = new float[cantidad];
float[] velX = new float[cantidad];
float[] velY = new float[cantidad];
float[] tams = new float[cantidad];
void setup() {
  size(600, 600);
  imagen = loadImage("imagen.jpg");
  sol = loadImage("sol.png");
  //THRESHOLD
  //imagen.filter(THRESHOLD,.7);
  //GRAY
  //OPAQUE
  //INVERT
  //imagen.filter(POSTERIZE,9);
  //DILATE
  //imagen.filter(BLUR,5);
  imagen.filter(DILATE);
  imageMode(CENTER);
  rectMode(CENTER);

  for (int i=0; i< cantidad; i++) {
    posX[i] = random(width);
    posY[i] = random(height);
    velX[i] = random(1, 3);
    velY[i] = random(1, 3);
    tams[i] = 50;
  }
}

void draw() {
  background(255);
  image(imagen, width/2, height/2, 600, 600);
  image(sol, 0, 0, 100, 100);
  for (int i =0; i< cantidad; i++) {
    image(sol,posX[i], posY[i], tams[i], tams[i]);
    posX[i] += velX[i];
    posY[i] += velY[i];
    if (posX[i]>width) {
      velX[i]*=-1;
    }
    if (posX[i]<0) {
      velX[i]*=-1;
    }
    if (posY[i]>height) {
      velY[i]*=-1;
    }
    if (posY[i]<0) {
      velY[i]*=-1;
    }
  }
  
}
