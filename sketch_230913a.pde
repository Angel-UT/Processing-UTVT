//Proyecto 
//creado por: Angel FLores Carlos
//Fecha de creacion: 13 de septiembre de 2023
//Fecha de ultima modificacion: 13 de septiembre de 2023
//Descripcion: Es un juego deonde un personaje se agarra a golpes y patadas contra una banda de maleantes
final int MAINSCREEN = 0;
final int GAMESCREEN = 1;
final int LOADSCREEN = 2;

final int LANGUAGE_SPANISH = 0;
final int LANGUAGE_ENGLISH = 1;

//PImage icon;
PFont typographyTitle;
Gamecontrol gco;
Languages languages;

void setup() {
  //icon = loadImage("icon.png"); //cargando imagen
  size(1280,720);
  windowMove(100,100);
  windowTitle("Cuerbeat 'Em Up IDGS102 The Game");
  //surface.setIcon(icon);  
  typographyTitle = createFont("Arial", 32);
  textFont(typographyTitle);
  languages = new Languages(LANGUAGE_ENGLISH, 3);
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
