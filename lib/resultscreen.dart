import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hangman/const%20&%20utils/counter.dart';

import 'const & utils/const.dart';
import 'gamedata/game.dart';
import 'gamedata/words.dart';
import 'mainscreen.dart';

class ResultScreen extends StatefulWidget {
  String text = '';
  bool hint = false;
  ResultScreen({
    Key ? key,
    required this.text, required this.hint});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Text(widget.text,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        primary: kButton,
                        textStyle: TextStyle(fontSize: 30.0) ),
                        onPressed: () {
                          setState(() {
                              Game.selectedChar.clear();
                              RandomWord();
                              Game.tries = 0;
                              NotifierValue.counter.value = Game.tries;
                              widget.hint = false;
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: ((build) => GamePage())));
                          });
                        }, child: Text('REINICIAR')),
            ]),
      ); 
     
  }
}