import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 148, 193, 245),
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
                        child: Container(
                          child:Row(children: [
                            Image.asset("lib/images/k.png",width: 70,),
                             Image.asset("lib/images/i.png",width: 60,),
                            Image.asset("lib/images/d.png",width: 60,),
                            Image.asset("lib/images/d1.png",width: 60,),
                            Image.asset("lib/images/0.png",width: 70,),
                      
                          ],),
                        ),

                        
                      ),
                      //Text("Learn"),
                ],
              ))
        ],
      ),
    );
  }
}
