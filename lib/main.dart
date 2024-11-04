import 'package:flutter/material.dart';
import 'package:project_travel/latihanmodul/p5.dart';
import 'package:project_travel/screens/splash_screens.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}