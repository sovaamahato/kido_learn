import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'choose_level_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 148, 193, 245),
      body: Stack(
        children: [
          Image.asset(
            "lib/images/bg1.jpg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
              left: MediaQuery.of(context).size.width * .050,
              //left: 10,
              top: MediaQuery.of(context).size.height * .30,
              child: Stack(
                children: [
                  Container(
                      height: 490,
                      width: 320,
                      child: Image.asset(
                        "lib/images/b1.png",
                        fit: BoxFit.cover,
                      )),
                  Positioned(
                    top: 60,
                    child: Row(
                      children: [
                        Image.asset(
                          "lib/images/k.png",
                          width: 70,
                        ),
                        Image.asset(
                          "lib/images/i.png",
                          width: 60,
                        ),
                        Image.asset(
                          "lib/images/d.png",
                          width: 60,
                        ),
                        Image.asset(
                          "lib/images/d1.png",
                          width: 60,
                        ),
                        Image.asset(
                          "lib/images/o.png",
                          width: 70,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 140,
                      left: 55,
                      child: Center(
                        child: Text(
                          "Play & Learn",
                          style:
                              GoogleFonts.acme(fontSize: 40, color: Colors.red),
                        ),
                      )),
                  Positioned(
                    left: 100,
                    top: 200,
                   
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ChooseLevelScreen();
                        }));
                      },
                      child: Container(
                         
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 18, 67, 107)),
                        child: Text(
                          "START NOW",
                          style: GoogleFonts.acme(
                              color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
