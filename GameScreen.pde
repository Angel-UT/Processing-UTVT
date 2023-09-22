//Modulo GameScreen
//creado por: Angel FLores Carlos
//Fecha de creacion: 18 de septiembre de 2023
//Fecha de ultima modificacion: 18 de septiembre de 2023
//Descripcion: Pantalla de juego

class GameScreen {
  GameScreen(){}
    
  void display(){
    background(0);
    fill(255);
    stroke(255);
    textAlign(CENTER, CENTER);
    text(languages.getMessage(0), 400, 300);
  }
}
