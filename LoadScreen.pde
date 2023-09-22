//Modulo LoadScreen
//creado por: Angel FLores Carlos
//Fecha de creacion: 18 de septiembre de 2023
//Fecha de ultima modificacion: 18 de septiembre de 2023
//Descripcion: Pantalla de carga

class LoadScreen {
  LoadScreen(){}
  
  void display(){
    background(128);
    fill(255);
    stroke(255);
    textAlign(CENTER, CENTER);
    text(languages.getMessage(1), 300, 300);
  }
}
