//Giro
float posX = 200;
float posY = 200;
float angulo = 0;
void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255);

  pushMatrix();
  translate(posX, posY);
  rotate(radians(angulo));
  ellipse(0, 0, 100, 200);
  ellipse(100, 100, 50, 50);
  ellipse(200, 100, 50, 50);
  ellipse(0, 50, 100, 100);
  popMatrix();
  angulo+=3;
}
