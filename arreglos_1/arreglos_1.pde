//Arreglo es un espacio de memoria que nos permite almacenar varios objetos del mismo tipo
//tipo [] referencia = new tipo[]{valores,separados,por,comas};
//Arreglo literal
int[] edades = new int[]{20,30,70,100,50,15,1,4,5};
//arreglo no Literal 
float[] calificacion = new float[5]; 
void setup(){
  size(600,600);
  calificacion[0] = 7.5;
  calificacion[1] = 6.3;
  calificacion[2] = 9.5;
  calificacion[3] = 6.2;
  calificacion[4] = 7.0;
  calificacion[5] = 7.0;
  println(calificacion[1]);
}

void draw(){

}
