import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/quize.dart';
import '../components/result.dart';

class Level1Screen extends StatefulWidget {
  const Level1Screen({super.key});

  @override
  State<Level1Screen> createState() => _Level1ScreenState();
}

class _Level1ScreenState extends State<Level1Screen> {
  var _questionIndex = 0;

  void _answerQ() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  var _questions =[
    {
      'questionText': 'lib/images/carrots.png',
      'answer': ['Apple', 'cauli Flower', 'Carrots', 'grapes']
    },
    {
      'questionText': 'lib/images/cauliflower.png',
      'answer': ['rice', 'roti', 'burger', 'cauli flower']
    },
    {
      'questionText': 'lib/images/potato.png',
      'answer': ['potato', 'tomato', 'peas', 'vindi']
    },
    {
      'questionText': 'lib/images/okra.png',
      'answer': ['potato', 'tomato', 'vindi', 'aalu']
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.brown.shade100,
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          _questionIndex < _questions.length?
          const Text("Choose the correct name?",
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)):
                  const Text("Wow Here's the result..",
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),


          const SizedBox(height: 20),
          _questionIndex < _questions.length
              ? Quize(
                  answerQ: _answerQ,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(),
        ],
      ),
    );
  }
}
