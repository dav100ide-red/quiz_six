import 'package:flutter/material.dart';
import 'package:quiz_six/welcome.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DefaultTextStyle.merge(
          style: TextStyle(color: Colors.white, fontSize: 18),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 138, 74, 249),
                  const Color.fromARGB(255, 100, 6, 122),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              color: Colors.white,
            ),
            child: Welcome(),
          ),
        ),
      ),
    );
  }
}
