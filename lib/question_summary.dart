import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          summaryData.map((sd) {
            return Row(
              children: [
                Text(((sd['question_index'] as int) + 1).toString()), //
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
    );
  }
}
