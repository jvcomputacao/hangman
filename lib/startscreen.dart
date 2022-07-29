import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hangman/const%20&%20utils/const.dart';

import 'mainscreen.dart';

class GameStart extends StatelessWidget {
  const GameStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         alignment: Alignment.center,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Text('Jogo da Forca',
             style: TextStyle(
             shadows: <Shadow>[
               Shadow(offset: Offset(3.0, 3.0),
               blurRadius: 2.0,
               color: Color.fromARGB(162, 0, 0, 0))
             ],
             fontSize: 35,
             fontWeight: FontWeight.bold),),
             SizedBox(
               height: 30,),
             Image.asset('assets/hangmanDead.png',
             scale: 1.2,),
             SizedBox(
               height: 30,
             ),
             ElevatedButton(
               style: ElevatedButton.styleFrom(
                 primary: kButton,
                 padding: EdgeInsets.all(10),
                 textStyle: TextStyle(fontSize: 30)
               ),
               onPressed: () {
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: ((build) => GamePage())));
               }, 
               child: Text('COMEÇAR')
             )
           ],
         ),
       ),
    );
  }
}