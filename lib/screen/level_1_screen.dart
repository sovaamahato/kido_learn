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
  final _questionIndex = 0;

  final PageController _controller = PageController(initialPage: 0);
  //setting game variables
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;

  //scroing for correct answer
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[100],
        body: Center(
          child: Padding(
              padding: const EdgeInsets.all(18),
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _controller,
                onPageChanged: (page) {
                  setState(() {
                    isPressed = false;
                  });
                },
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return Column(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      const SizedBox(height: 26,),
                      Text(
                        "Question ${index + 1}/${questions.length}",
                        style: GoogleFonts.actor(
                            color: const Color.fromARGB(255, 136, 91, 214),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
        
                      const Divider(
                        color: Colors.white,
                        height: 8,
                        thickness: 3,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
        
                      const Text(
                        "Choose the Correct one",
                        style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 243, 39, 182)),
                      ),
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
        
                      GestureDetector(
                        onTap: isPressed
                            ? index + 1 == questions.length
                                ? () {
                                    setState(() {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Result(score);
                                      }));
                                    });
                                  }
                                : () {
                                    _controller.nextPage(
                                        duration: const Duration(milliseconds: 80),
                                        curve: Curves.bounceIn);
                                  }
                            : null,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.deepPurpleAccent,),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              index + 1 == questions.length
                                  ? "See Results"
                                  : "Next Questions",
                              style: const TextStyle(
                                  fontSize: 27, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  );
                },
              )),
        ));
  }
}
