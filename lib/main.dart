import 'package:flutter/material.dart';
//import 'package:kido_learn/components/result.dart';
import 'package:kido_learn/screen/choose_level_screen.dart';
import 'package:kido_learn/screen/splash_screen.dart';

import 'screen/level_1_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
    home: Level1Screen());
  }
}