import 'package:flutter/material.dart';
import 'package:quiz_ui/quiz_description.dart';
import 'package:quiz_ui/quiz_widgets.dart';

class QuizResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quiz Title',
              style: TextStyle(
                  color: Color(0xff305275),
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 40),
            Container(
              child: Image.asset('images/quiz_result.png'),
            ),
            SizedBox(height: 60),
            Text('Your Score'),
            Container(
              margin: EdgeInsets.only(top: 4, bottom: 4),
              child: Text(
                '9',
                style: TextStyle(
                  color: Color(0xffF36C24),
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text('Out of 10'),
            SizedBox(height: 62),
            QuizButtons(
              text: 'Review',
              onPressed: () {
                //TODO: Add required responsiveness
              },
            ),
            QuizButtons(
              text: 'Done',
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
