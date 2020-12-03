import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_ui/quiz_widgets.dart';

class QuizReview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 16, top: 12),
              child: Text(
                'Quiz Review',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffF36C24),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16, top: 18, bottom: 12),
              child: Text(
                'Marks scored : 9',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff305275),
                ),
              ),
            ),
            ReviewContainer(),
            ReviewContainer(),
            ReviewContainer(),
            ReviewContainer(),
          ],
        ),
      ),
    );
  }
}
