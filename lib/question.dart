import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final keyword - to avoid this error "This class (or a class that this class inherits from) is marked as '@immutable', but one or more of its instance fields aren't final: Question.questionTextdartmust_be_immutable".
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
