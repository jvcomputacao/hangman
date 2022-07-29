import 'words.dart';



class Game{
  String palavra = '';
  int points = 0;
  static int tries = 0;
  static List<String> selectedChar = [];
  List<Word> palavras = WordsList().wordList;
  
 
  bool checkifWins() {
  bool win = false;
  String palavra = palavras[currentIndex].word;
  List<String> letras = palavra.split('');
   void checkifContains(l) {
    if (selectedChar.contains(l)) {
        points++;
   }
  }
  letras.forEach((letter) => checkifContains(letter));

  if (points == palavra.length) {
      win = true;
  }


   return win; 
  }

    
  
   
}


 

