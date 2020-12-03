import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_ui/quiz_constants.dart';
import 'package:quiz_ui/quiz_widgets.dart';

class QuizDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('images/question_mark.png'),
            ),
            SizedBox(height: 20),
            Text(
              'Quiz Title',
              style: TextStyle(
                  color: colorBlueText,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Description of the quiz the quiz Description of the quiz Description of the quiz Description of the quiz Description of the quiz Description of the quiz Description',
                style: TextStyle(
                    color: colorBlueText,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Bullets(text: '10 questions'),
            Bullets(text: '10 marks'),
            Bullets(text: '30 minutes'),
            SizedBox(height: 100),
            QuizButtons(
              text: 'Start Attempt',
              onPressed: () {
                //TODO: Add required responsiveness
              },
            ),
          ],
        ),
      ),
    );
  }
}
