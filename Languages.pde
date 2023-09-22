//Modulo Languages
//creado por: Angel FLores Carlos
//Fecha de creacion: 18 de septiembre de 2023
//Fecha de ultima modificacion: 18 de septiembre de 2023
//Descripcion: Controla los idiomas 

class Languages {
  String languages[][];
  String file[];
  int activeLanguage;
  int totalMessages;
  
  Languages(int language, int total) {
    activeLanguage = language;
    totalMessages = total;
    
    languages = new String[2][totalMessages];
    loadLanguage(LANGUAGE_SPANISH);
    loadLanguage(LANGUAGE_ENGLISH);
  }
  
  void loadLanguage(int language) {
    file = loadStrings((language == LANGUAGE_SPANISH) ? "esp.lang" : "eng.lang");
    for(int message = 0; message < totalMessages;message++)
      languages[language][message] = split(file[message], "=")[1];
  }
  
  void setLanguage(int language) {
    activeLanguage = language;
  }
  
  int getLanguage() {
    return activeLanguage;
  }
  
  String getMessage(int messageNumber) {
    return languages[activeLanguage][messageNumber];
  }
  
}
