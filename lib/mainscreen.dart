import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hangman/resultscreen.dart';
import 'package:hangman/startscreen.dart';
import 'package:hangman/widgets/Hangman_figure.dart';
import 'package:hangman/widgets/hangmanImage.dart';
import 'package:hangman/widgets/keyboard&word.dart';
import 'package:hangman/widgets/letter_box.dart';

import 'const & utils/const.dart';
import 'const & utils/utils.dart';
import 'gamedata/game.dart';
import 'gamedata/words.dart';


class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int rightGuesses = 0;
  bool result = false;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Jogo da Forca')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: HangmanImage()
            ),

            SizedBox(
              height: 20,
            ),
      
             Keyboard_Word(),
              Text('João Victor Castro de Oliviera e Victor Cavalcante Vieira',style: TextStyle(fontWeight: FontWeight.bold))
                  ]));
            
  }
}