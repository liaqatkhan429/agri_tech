import 'package:agri_tech/views/all_question.dart';
import 'package:agri_tech/views/bottom_navbar.dart';
import 'package:agri_tech/views/onBoarding.dart';
import 'package:agri_tech/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: BottomNavbarView(),
    );
  }
}

