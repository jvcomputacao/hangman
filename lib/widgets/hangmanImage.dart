import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hangman/const%20&%20utils/counter.dart';
import 'package:hangman/widgets/keyboard&word.dart';

import '../gamedata/game.dart';
import 'Hangman_figure.dart';


class HangmanImage extends StatefulWidget {
  int value = 0;
  HangmanImage({
    Key? key}) : super(key: key);

  @override
  State<HangmanImage> createState() => _HangmanImageState();
}

class _HangmanImageState extends State<HangmanImage> {
  

  @override
  Widget build(BuildContext context) {
      return ValueListenableBuilder(
                  valueListenable: NotifierValue.counter, 
                  builder: (context,value,child) {
                  return Stack(children: [
                  hangmanFigure(NotifierValue.counter.value == 0, "assets/hang.png"),
                  hangmanFigure(NotifierValue.counter.value == 1, "assets/hanghead.png"),
                  hangmanFigure(NotifierValue.counter.value == 2, "assets/hangbody.png"),
                  hangmanFigure(NotifierValue.counter.value == 3, "assets/hangRightarm.png"),
                  hangmanFigure(NotifierValue.counter.value == 4, "assets/hangmanBothArms.png"),
                  hangmanFigure(NotifierValue.counter.value == 5, "assets/hangRightLeg.png"),
                  hangmanFigure(NotifierValue.counter.value == 6, "assets/fullhangman.png"),
                    ]);
                  });
        
  } 
}