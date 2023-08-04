import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  // const Questions({Key? key}) : super(key: key);

  final String questionsText;

  Questions(this.questionsText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin:const EdgeInsets.all(20) ,
      child: Image.asset(questionsText,height: 140,),
      // child: Text(
      //   questionsText,
      //   style:const TextStyle(
      //     color: Colors.blue,
      //     fontSize: 20.0,
      //   ),
      //   textAlign: TextAlign.center,
      // ),
    );
  }
}
