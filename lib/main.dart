import 'package:flutter/material.dart';
import 'package:quiz_six/quiz.dart';
// import 'package:quiz_six/welcome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}
