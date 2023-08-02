import 'package:flutter/material.dart';

class Level2Screen extends StatefulWidget {
  const Level2Screen({super.key});

  @override
  State<Level2Screen> createState() => _Level2ScreenState();
}

class _Level2ScreenState extends State<Level2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:const Text("Level 2")),);
  }
}