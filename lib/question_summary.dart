import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_six/number_ball.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  String getUiStateFromSd(Map<String, Object> sd) {
    return sd['correct_answer'] == sd['user_answer'] ? 'success' : 'danger';
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((sd) {
                return Container(
                  margin: EdgeInsets.only(bottom: 25),
                  child: Row(
                    children: [
                      NumberBall(
                        label: ((sd['question_index'] as int) + 1).toString(),
                        uiState: getUiStateFromSd(sd),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              sd['question'] as String,
                              style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              sd['user_answer'] as String,
                              style: GoogleFonts.lato(
                                color: const Color.fromARGB(255, 169, 219, 242),
                              ),
                            ),
                            Text(
                              sd['correct_answer'] as String,
                              style: GoogleFonts.lato(
                                color: Colors.greenAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
