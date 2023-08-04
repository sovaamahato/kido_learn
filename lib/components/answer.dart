import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);
  final VoidCallback selectAnswer;
  final String answerText;

  const Answer(this.selectAnswer, this.answerText);

  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectAnswer,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.orange,
          borderRadius: BorderRadius.circular(14)),
          child: Center(child: Text(answerText,style: TextStyle(fontSize: 20),)),
          
          
          // child:ElevatedButton(
          //     //color: Colors.blue,
          //     //textColor: Colors.white,
          //     child: Text(answerText),
          //     onPressed:selectAnswer,
          //     ),
          
        ),
      ),
    );
    
  }
}