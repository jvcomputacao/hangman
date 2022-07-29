import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hangman/const%20&%20utils/counter.dart';

import '../const & utils/const.dart';
import '../const & utils/utils.dart';
import '../gamedata/game.dart';
import '../gamedata/words.dart';
import '../resultscreen.dart';
import 'letter_box.dart';



class Keyboard_Word extends StatefulWidget {
  
  Keyboard_Word({Key? key}) : super(key: key);

  @override
  State<Keyboard_Word> createState() => _Keyboard_WordState();
}

class _Keyboard_WordState extends State<Keyboard_Word> {
  String text = '';
  bool hideHint = false;
  //ValueNotifier _counter = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

           Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: WordsList().wordList[currentIndex].word
              .split('')
              .map((e) => letterBox(e.toUpperCase(), !Game.selectedChar.contains(e.toUpperCase())))
              .toList(),
            ),
            
          SizedBox(
            width: double.infinity,
            height: 250.0,
            child: GridView.count(
                          crossAxisCount: 7,
                          mainAxisSpacing: 8.0,
                          crossAxisSpacing: 8.0,
                          padding: EdgeInsets.all(8.0),
                          children: alphabet.map((e) {
                            return RawMaterialButton(
                              onPressed: Game.selectedChar.contains(e) ? null : () {
                                setState(() {
                                  Game.tries;
                                  Game.selectedChar.add(e);
                                  if(!WordsList().wordList[currentIndex].word.split('').contains(e.toUpperCase())) {                                   
                                    Game.tries++;
                                    NotifierValue.counter.value = Game.tries;
                                  }
                                  if(Game().checkifWins()) {
                                   text = 'Você ganhou!';
                                  Future.delayed(Duration(seconds: 3));
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: ((build) => ResultScreen(text: text, hint: hideHint))));
                                  }
                                  if (Game.tries == 6) {
                                   text = 'Você perdeu';
                                   Future.delayed(Duration(seconds: 3));
                                   Navigator.pushReplacement(context, MaterialPageRoute(builder: ((build) => ResultScreen(text: text, hint: hideHint))));
                                  }
                                  if(Game.tries == 4 && hideHint == false) {
                                    final text = WordsList().wordList[currentIndex].hint;
                                    final snackBar = SnackBar(
                                    duration: Duration(days: 365),
                                    content: Text(text),
                                    action: SnackBarAction(
                                      label: 'Fechar',
                                      onPressed: () {},
                                      ),
                                      );
                                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                      hideHint = true;
                                  }
                                });
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Text(e, style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),),
                              fillColor: Game.selectedChar.contains(e)
                              ? Color.fromARGB(255, 95, 0, 135)
                              : kLetterBoxMainColor,
                              );
                          }).toList()),
          ),
      ],
    );
  }
}