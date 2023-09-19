//Modulo Gamecontrol 
//creado por: Angel FLores Carlos
//Fecha de creacion: 18 de septiembre de 2023
//Fecha de ultima modificacion: 18 de septiembre de 2023
//Descripcion: El módulo GameControl tendrá la funcion de coordinar la ejecución del juego en función de la pantalla actuva

class Gamecontrol {
  int activeScreen;
  MainScreen mainScreen;
  GameScreen gameScreen;
  LoadScreen loadScreen;
  
  Gamecontrol() {
    mainScreen = new MainScreen();
    gameScreen = new GameScreen();
    loadScreen = new LoadScreen();
    activeScreen = MAINSCREEN;
  }
  
  void display() {
    switch(activeScreen) {
      case MAINSCREEN:  mainScreen.display(); break;
      case GAMESCREEN:  gameScreen.display(); break;
      case LOADSCREEN:  loadScreen.display(); break;
    }
  }
  
  void setActiveScreen(int screen){
    activeScreen = screen;
  }  
  int getActiveScreen() {
    return activeScreen;
  }
  
  void nextActiveScreen(){
    activeScreen++;
    if(activeScreen>LOADSCREEN){
      activeScreen = MAINSCREEN;
    }
  }
  
  void prevActiveScreen() {
    activeScreen--;
    if(activeScreen<MAINSCREEN){
      activeScreen = LOADSCREEN;
    }
  }
  
  void mouseControl(int x, int y, int button){
    if(button == LEFT)
      nextActiveScreen();
     else
      prevActiveScreen();
  }
  
  void keyControl(char keyTap){
    switch(keyTap) {
      case '+': nextActiveScreen(); break;
      case '-': prevActiveScreen(); break;
    }
  }
  
}
