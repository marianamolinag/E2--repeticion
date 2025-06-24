//E2: REPETICIÓN
//Mariana Molina 202222414
//

int incrementos = 100;

void setup() {
  size(1000, 1000);
  background(255);
  noLoop();
}

void draw() {
  for (int y = 0; y <= height; y += incrementos) {
    for (int x = 0; x <= width; x += incrementos) {
      
      noStroke();
      
      // Triángulo superior
      fill(random(80, 160), random(100, 200), random(180, 255)); 
      triangle(x, y, x + incrementos, y, x + incrementos/2, y + incrementos/2);
      
      // Triángulo izquierdo
      fill(random(80, 160), random(100, 200), random(180, 255)); 
      triangle(x, y, x + incrementos/2, y + incrementos/2, x, y + incrementos);
      
      // Triángulo derecho
      fill(random(80, 160), random(100, 200), random(180, 255)); 
      triangle(x + incrementos, y, x + incrementos, y + incrementos, x + incrementos/2, y + incrementos/2);
      
      //  Triángulo inferior 
      fill(random(80, 160), random(100, 200), random(180, 255)); 
      triangle(x, y + incrementos, x + incrementos, y + incrementos, x + incrementos/2, y + incrementos/2);
    }
  }
}
