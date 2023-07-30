import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color.fromARGB(255, 124, 96, 86),
        body: Column(
      children: [
        const SizedBox(height: 40,),
        Lottie.asset('lib/images/anima.JSON'),
        const SizedBox(height: 200,),
        Text("Learning With playing",style: GoogleFonts.acme(fontSize: 26),),
        const SizedBox(
          height: 120,
        ),
        Lottie.asset('lib/images/butterfly.JSON')
      ],
    ));
  }
}
