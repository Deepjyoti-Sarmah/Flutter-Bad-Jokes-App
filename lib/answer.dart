import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String answers;

  Answers({required this.answers});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 5, 15, 45),
      child: Text(
        answers,
        style: TextStyle(
          fontSize: 27.5,
          fontWeight: FontWeight.normal,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
