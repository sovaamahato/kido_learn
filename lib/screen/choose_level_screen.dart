import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kido_learn/components/my_card.dart';

class ChooseLevelScreen extends StatefulWidget {
  const ChooseLevelScreen({super.key});

  @override
  State<ChooseLevelScreen> createState() => _ChooseLevelScreenState();
}

class _ChooseLevelScreenState extends State<ChooseLevelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
        appBar: AppBar(
          centerTitle: true,
            backgroundColor: Colors.purple,
            title: Text(
              "Choose Level",
              
              style: GoogleFonts.acme(
                  color: const Color.fromARGB(255, 234, 160, 247)),
            )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal:35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              
                  MyCard(color: Colors.blue, text: "Level 1",selectLevel: (){
                  
                  },),
                  const SizedBox(height: 20,),
                  MyCard(color: const Color.fromARGB(255, 240, 85, 137), text:"Level 2",selectLevel: (){

                  },)
                ,const SizedBox(height: 20,),
                MyCard(color: Colors.yellow, text: "Level 3",selectLevel: (){

                },),
                const SizedBox(height: 20,),
                MyCard(color: Colors.purple, text: "Level 4",selectLevel: (){

                },)
                ],
              ),
        
          ),
        );
  }
}
