import 'dart:math';

import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatefulWidget {
  //final List<String> choosenAnswers;
  //const Result({required this.choosenAnswers});

  final int score;
  Result(this.score);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final _controller = ConfettiController();
  //bool isPlaying = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.play();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        backgroundColor: Color.fromARGB(255, 253, 179, 204),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  'Quize complete!!',
                  style: GoogleFonts.actor(fontSize: 30),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Congratulations!",
                  style:
                      GoogleFonts.actor(fontSize: 40, color: Colors.deepPurple),
                ),
                const SizedBox(height: 90),
                const Text("Your score is :"),
                const SizedBox(height: 20,),
                Text(
                  "${widget.score}",
                  style: GoogleFonts.actor(
                      fontSize: 90, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
      ConfettiWidget(
        emissionFrequency: 0.05,
        numberOfParticles: 100,
        colors: const [
          Colors.red,
          Colors.green,
          Colors.yellow,
        ],
        confettiController: _controller,
        blastDirection: pi / 2,
      )
    ]);
  }
}
