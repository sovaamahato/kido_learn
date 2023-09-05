import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kido_learn/components/answer.dart';

import '../components/questions_list.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown.shade100,
        body: Padding(
            padding: const EdgeInsets.all(18),
            child: PageView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      "Question ${index + 1}/${questions.length}",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      color: Colors.grey[900],
                      height: 8,
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //question
                    Text(
                      questions[index].question!,
                      style: TextStyle(color: Colors.blue),
                    ),
//buttons for answer linst

for(int i=0; i<questions[index].answer!.length;i++)
  // MaterialButton(onPressed: (){

  // },child: const Text("...."),),
  Answer(() { }, questions[index].answer!.keys.toList()[i]),

                  ],
                );
              },
            ))

        // body: Column(
        //   children: [
        //     const SizedBox(
        //       height: 30,
        //     ),
        //     _questionIndex < _questions.length?
        //     const Text("Choose the correct name?",
        //         style: TextStyle(
        //             color: Colors.deepPurple,
        //             fontSize: 25,
        //             fontWeight: FontWeight.bold)):
        //             const Text("Wow Here's the result..",
        //         style: TextStyle(
        //             color: Colors.deepPurple,
        //             fontSize: 25,
        //             fontWeight: FontWeight.bold)),

        //     const SizedBox(height: 20),
        //     _questionIndex < _questions.length
        //         ? Quize(
        //             answerQ: _answerQ,
        //             questionIndex: _questionIndex,
        //             questions: _questions)
        //         : Result(),
        //   ],
        // ),
        );
  }
}
