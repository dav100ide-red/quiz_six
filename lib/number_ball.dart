import 'package:flutter/material.dart';

class NumberBall extends StatelessWidget {
  const NumberBall({super.key, required this.label, required this.uiState});
  final String label;
  final String uiState;

  Color _getColorByState(String state) {
    switch (state) {
      case 'success':
        return Colors.green;
      case 'danger':
        return const Color.fromARGB(255, 233, 65, 53);
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _getColorByState(uiState),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
