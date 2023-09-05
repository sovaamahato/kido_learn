// import 'package:flutter/material.dart';

// import 'answer.dart';
// import 'question_model.dart';

// class Quize extends StatelessWidget {
//   // const MyWidget({Key? key}) : super(key: key);
//   final List<Map<String, Object>> questions;
//   final VoidCallback answerQ;
//   final int questionIndex;

//   const Quize({
//     required this.questions,
//     required this.questionIndex,
//     required this.answerQ
// });

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//                 Questions(
//                   questions[questionIndex]['questionText'] as String,
//                 ),
//                 ...(questions[questionIndex]['answer'] as List<String>)
//                     .map((answer) {
//                   return Answer(answerQ, answer);
//                 }).toList(),
//                 // Answer(_answer),
//                 // Answer(_answer),
//                 // Answer(_answer),
//               ]);
    
//   }
// }
