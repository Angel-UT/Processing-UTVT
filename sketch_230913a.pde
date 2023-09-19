//Proyecto 
//creado por: Angel FLores Carlos
//Fecha de creacion: 13 de septiembre de 2023
//Fecha de ultima modificacion: 13 de septiembre de 2023
//Descripcion: Es un juego deonde un personaje se agarra a golpes y patadas contra una banda de maleantes

//PImage icon; 
int x, y;
boolean directionX, directionY;

void setup() {
  //icon = loadImage("icon.png"); //cargando imagen
  size(1280,720);
  windowMove(100,100);
  windowTitle("Cuerbeat 'Em Up IDGS102 The Game");
  //surface.setIcon(icon);
  
  x=200;
  y=200;
  
  directionX = true; //true es a la derecha
  directionY = true; 
}

void draw() {
  background(128);
  rectMode(CENTER);
   stroke(255);
  fill(255,242,0);
  circle(640, 100, 70); // pocicion, radio
  stroke(0);
  fill(255,0,0);
  rect(x,y,100,100); //pocicion, tamanio
  
  
  x+=(directionX)? 1 : -1; 
  if( x<50 || x>1230) directionX=!directionX;
   y+=(directionY)? -1 : 1; 
  if( y<50 || y>670) directionY=!directionY;
  //Graficos de computadora para generarlos el eje y esta invertido por lo que al aumnetar la y se mueve hacia abajo
  
  
}
