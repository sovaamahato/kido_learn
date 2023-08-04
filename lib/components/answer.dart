import 'dart:async';

import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  // const Answer({Key? key}) : super(key: key);
  final VoidCallback selectAnswer;
  final String answerText;

  const Answer(this.selectAnswer, this.answerText);

  @override
  State<Answer> createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {

   bool _moveRight = true;
  final double _movementDistance = 14;

  @override
  void initState() {
    super.initState();
    _startMoving();
  }

 void _startMoving() {
    const duration = Duration(seconds: 2); // The duration for each animation.
    Timer.periodic(duration, (timer) {
      setState(() {
        _moveRight = !_moveRight; // Toggle the direction for the next animation.
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.selectAnswer,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:TweenAnimationBuilder(
          duration: Duration(seconds: 2), // The duration of each animation.
          tween: Tween<double>(begin: 0, 
          end: _moveRight ? _movementDistance : 0),
          builder: (BuildContext context, double value, Widget? child) {
            return Transform.translate(
              offset: Offset(value, 0),
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.orange,
          borderRadius: BorderRadius.circular(14)),
          child: Center(child: Text(widget.answerText,style: TextStyle(fontSize: 20),)),
          
          
          // child:ElevatedButton(
          //     //color: Colors.blue,
          //     //textColor: Colors.white,
          //     child: Text(answerText),
          //     onPressed:selectAnswer,
          //     ),
          
        ),
        );
          })
      ),
    );
    
  }
}