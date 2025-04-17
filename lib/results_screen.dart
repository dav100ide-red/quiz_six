import 'package:flutter/material.dart';
import 'package:quiz_six/data/questions.dart';
import 'package:quiz_six/question_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i, //
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numTotatCorrectQuestions =
        summaryData.where((sd) {
          return sd['correct_answer'] == sd['user_answer'];
        }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'You answered $numTotatCorrectQuestions out of $numTotalQuestions questions correctly!',
            ),
            SizedBox(height: 30),
            QuestionSummary(summaryData: summaryData),
            SizedBox(height: 30),
            TextButton(onPressed: () {}, child: Text('Restart quiz')),
          ],
        ),
      ),
    );
  }
}
