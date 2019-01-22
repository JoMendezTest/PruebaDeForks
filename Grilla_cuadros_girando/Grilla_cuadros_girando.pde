// Josefa Méndez
// 13 / 09 / 2018

float r; // Creo mi variable de rotación

void setup() {
  size(700, 700); // Creo mi canvas de 700x700
  rectMode(CENTER); // Cambio el eje de posición de mis cuadrados al centro como las ellipses
}

void draw() {
  background(0); // fondo negro

  for (int i = 0; i < 2; i++) { // Creo mi for loop i que me dibujara dos elementos en el eje x
    for (int j = 0; j < 2; j++) { // Creo mi for loop j que me dibujara dos elementos en el eje y
      pushMatrix(); // Genero mi pushMatrix(); para almacenar la rotación y traslación a solo los elementos que hay dentro
      translate(150, 150); // traslado mi figura 150px en el ejeX y 150px en el ejeY
      figura(i*400, j*400); // Introduzco mi figura para que se repita con el for loop, rote y se traslade
      popMatrix(); // Cierro mi pushMatrix();
    }
  }

  if (key == '1') { // Sí yo apreto la tecla numero 1 mi figura rotara hacia la izquierda
    r = r - 0.01; // Le señalo que a mi variable de rotación se le va a ir restando 0.01 para girar a la izquierda
  } else { // Sí no apreto el 1,
    r = r + 0.01; // Le señalo a mi variable rotación que en cada lectura voy a sumarle 0.01 para que gire a la derecha
  }
}

void figura(int posX, int posY) { // Creo un void para almacenar toda mi figura, y le específico variables de posiciones para colocarlas en donde yo quiera
  for (int i = 0; i < 20; i++) { // Genero un for de 20 elementos para formar mi figura
    strokeWeight(i/2); // Mi grosor de línea va a ir variando según el orden de las figuras. Las primeras figuras tendrán un grosor de línea más delgado 
    stroke(i*5, i, 100); // pinto mis líneas con un degrade porque incluí a i
    noFill(); // No quiero color de relleno
    pushMatrix(); // Inicio mi pushMatrix();
    translate(posX, posY); // traslado mi figura según los datos que coloque en la línea 18
    rotate(radians(5*i)*r); // rotamos constantemente la figura pero por piezas separadas gracias a i
    rect(0, 0, i*20, i*20); // Dibujo un cuadrado donde los parámetros de posición están en 0, 0 para que las mueva bien gracias a mi translate, y aplico el for loop i en los tamaños para que cambien constantementes.
    popMatrix(); // Cierro el pushMatrix
  }
}