import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatefulWidget {
  var color;
   String text;
   
   
   Function()? selectLevel;
   
   
  MyCard({super.key, required this.color,required this.text,required this.selectLevel,});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  bool _moveRight = true;
  final double _movementDistance = 80;
  @override
  void initState() {
    super.initState();
    _startMoving();
  }

 void _startMoving() {
    const duration = Duration(seconds: 2); // The duration for each animation.
    Timer.periodic(duration, (timer) {
      setState(() {
        _moveRight = !_moveRight; // Toggle the direction for the next animation.
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.selectLevel,
      child: TweenAnimationBuilder(
          duration: const Duration(seconds: 2), // The duration of each animation.
          tween: Tween<double>(begin: 0, 
          end: _moveRight ? _movementDistance : 0),
          builder: (BuildContext context, double value, Widget? child) {
            return Transform.translate(
              offset: Offset(value, 0),child:Container(
        
                      height: 130,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: widget.color),
                      child: Center(
                        child: Text(
                          widget.text,
                          style: GoogleFonts.acme(fontSize: 24, 
                          color: Colors.white,),
                        ),
    
                      ),
                    ),
            );
          })
    );
  }
}