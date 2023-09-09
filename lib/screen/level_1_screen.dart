import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kido_learn/components/answer.dart';

import '../components/questions_list.dart';

import '../components/result.dart';

class Level1Screen extends StatefulWidget {
  const Level1Screen({super.key});

  @override
  State<Level1Screen> createState() => _Level1ScreenState();
}

class _Level1ScreenState extends State<Level1Screen> {
  var _questionIndex = 0;

  

  PageController? _controller = PageController(initialPage: 0);
  //setting game variables
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;

  //scroing for correct answer
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF252c4a),
        body: Padding(
            padding: const EdgeInsets.all(18),
            child: PageView.builder(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              onPageChanged: (page){
                setState(() {
                  isPressed=false;
                });
              },
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      "Question ${index + 1}/${questions.length}",
                      style: const TextStyle(
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

                    const Text("Choose the Correct one",style: TextStyle(fontSize: 25),),
                    //question
                    Image.asset(
                      questions[index].question!,
                      height: 80,
                      
                    ),
                //buttons for answer linst

                    for (int i = 0; i < questions[index].answer!.length; i++)
                      Answer(
                          isPressed
                              ? () {}
                              : () {
                                  print("Presed");
                                  setState(() {
                                    isPressed = true;
                                  });
                                  if (questions[
                                          index] //this means simply if the answer is correct add 10 to score
                                      .answer!
                                      .entries
                                      .toList()[i]
                                      .value) {
                                    score += 10;
                                  }
                                },
                          questions[index].answer!.keys.toList()[i],
                          isPressed
                              ? questions[index]
                                      .answer!
                                      .entries
                                      .toList()[i]
                                      .value
                                  ? isTrue
                                  : isWrong
                              : Colors.orange),

                    const SizedBox(
                      height: 20,
                    ),

                    OutlinedButton(
                        onPressed:isPressed?index+1==questions.length?(){
                          setState(() {
                            Navigator.push(context,MaterialPageRoute(builder: (context){
                            return Result(score);
                          }));
                          });
                          
                          
                        }:(){
                          _controller!.nextPage(duration: Duration(milliseconds: 80), curve: Curves.bounceIn);
                        }:null,
                        child: Text(
                          index+1==questions.length?
                          "See Results":"Next Questions",
                          style: const TextStyle(fontSize: 30,color: Colors.white),
                        ))
                  ],
                );
              },
            ))

       
        );
  }
}
