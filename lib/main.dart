import 'package:flutter/material.dart';
import 'package:screw/views/homeView.dart';

void main() {
  runApp(ScrewApp());
}

class ScrewApp extends StatelessWidget {
  const ScrewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      theme: ThemeData(fontFamily: "Playpen Sans Arabic"),
    );
  }
}
