import 'package:flutter/material.dart';
//import 'package:kido_learn/components/result.dart';
import 'package:kido_learn/screen/splash_screen.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
    home: SplashScreen());
  }
}