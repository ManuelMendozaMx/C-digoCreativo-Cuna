//Estructura de control 
//ciclo for
//variable que sera la que se itere 
//condición que nos dice cuando se va a detener el ciclo 
//una operación matemática que nos asegura que el ciclo se va a terminar
float[] posX = new float[]{100,30,70,80,200,30};
float[] posY = new float[]{300,250,70,100,200,80};
//Definir los tamaños de las elipses usando arreglos 
void setup(){
  size(600,600);
  
}

void draw(){
  background(255);
  for(int i =0; i< 6;i++){
    ellipse(posX[i],posY[i],50,50);
  }
 
}
