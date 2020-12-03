import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_ui/quiz_description.dart';
import 'package:quiz_ui/quiz_result.dart';
import 'package:quiz_ui/quiz_question.dart';
import 'package:quiz_ui/quiz_review.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: QuizDescription());
  }
}
