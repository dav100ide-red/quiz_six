import 'package:flutter/material.dart';
import 'package:quiz_six/number_ball.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  String getUiStateFromSd(Map<String, Object> sd) {
    return sd['correct_answer'] == sd['user_answer'] ? 'success' : 'danger';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),

      child: SizedBox(
        height: 300,
        child: SingleChildScrollView(
          child: Column(
            children:
                summaryData.map((sd) {
                  return Row(
                    children: [
                      NumberBall(
                        label: ((sd['question_index'] as int) + 1).toString(),
                        uiState: getUiStateFromSd(sd),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(sd['question'] as String), //
                            SizedBox(height: 5),
                            Text(sd['user_answer'] as String),
                            Text(sd['correct_answer'] as String),
                          ],
                        ),
                      ),
                    ],
                  );
                }).toList(),
          ),
        ),
      ),
    );
  }
}
