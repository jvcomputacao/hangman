import 'dart:math';

int currentIndex = Random().nextInt(WordsList().wordList.length);

class RandomWord {
    RandomWord () {
      currentIndex = Random().nextInt(WordsList().wordList.length);
    }
}


class Word {
  String word = '';
  String hint = '';

  Word({required this.word,required this.hint});
}



class WordsList {

List<Word> wordList = [
  Word(
    word: "Flutter".toUpperCase(), 
    hint: "Framework famoso para programação mobile"
    ),
  Word(
    word: "Cachorro".toUpperCase(), 
    hint: "Animal doméstico"
    ),
  Word(
    word: "Martelo".toUpperCase(), 
    hint: "É uma ferramenta"
    ),
  Word(
    word: "Celular".toUpperCase(), 
    hint: "Tecnologia portátil"
    ),
  Word(
    word: "Advogado".toUpperCase(), 
    hint: "Profissão ligada a justiça"
    ),
  Word(
    word: "Mochila".toUpperCase(), 
    hint: "Acessório usado em Escolas/Faculdades"
    ),
];
}

