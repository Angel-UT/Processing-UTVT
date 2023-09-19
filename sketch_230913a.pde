//Proyecto 
//creado por: Angel FLores Carlos
//Fecha de creacion: 13 de septiembre de 2023
//Fecha de ultima modificacion: 13 de septiembre de 2023
//Descripcion: Es un juego deonde un personaje se agarra a golpes y patadas contra una banda de maleantes
final int MAINSCREEN = 0;
final int GAMESCREEN = 1;
final int LOADSCREEN = 2;

//PImage icon;
Gamecontrol gco;

void setup() {
  //icon = loadImage("icon.png"); //cargando imagen
  size(1280,720);
  windowMove(100,100);
  windowTitle("Cuerbeat 'Em Up IDGS102 The Game");
  //surface.setIcon(icon);  
  gco = new Gamecontrol();
}

void draw() {
  gco.display();
}

void mouseReleased() {
  gco.mouseControl(mouseX, mouseY, mouseButton);
}

void keyReleased(){
  gco.keyControl(key);
}
