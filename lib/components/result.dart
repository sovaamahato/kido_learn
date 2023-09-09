import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //final List<String> choosenAnswers;
  //const Result({required this.choosenAnswers});
  
  final int score;
  Result( this.score);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

                  child: Column(
                    children: [
                      Text('Quize complete!!'),
                      Text("${score}")
                    ],
                  ),
                ),
    );
    
  }
}