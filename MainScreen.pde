//Modulo MainScreen
//creado por: Angel FLores Carlos
//Fecha de creacion: 18 de septiembre de 2023
//Fecha de ultima modificacion: 18 de septiembre de 2023
//Descripcion: Pantalla principal

class MainScreen {
  MainScreen(){}
  
  void display(){
    background(255);
    fill(0);
    stroke(0);
    textAlign(CENTER, CENTER);
    text(languages.getMessage(2), 300, 300);
  }
}
