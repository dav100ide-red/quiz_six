import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 150),
        Image.asset('assets/images/quiz-logo.png', width: 300),
        SizedBox(height: 35),
        Text("Learn Flutter the fun way!"),
        SizedBox(height: 35),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            side: BorderSide(color: Color.fromARGB(48, 79, 1, 138)),
          ),
          onPressed: () {}, //
          child: Text('Start Quiz', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
