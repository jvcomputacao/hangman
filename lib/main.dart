import 'package:flutter/material.dart';
import 'package:hangman/mainscreen.dart';
import 'package:hangman/startscreen.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HangMan',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.white,
      ),
      home: GameStart()
      );
  }
}

