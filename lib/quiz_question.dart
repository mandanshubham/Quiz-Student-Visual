import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_ui/quiz_constants.dart';
import 'package:quiz_ui/quiz_widgets.dart';

class QuestionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(top: 15, bottom: 15, right: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Next',
                style: TextStyle(
                    color: Color(0xff305275),
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.navigate_next,
                size: 30,
                color: Color(0xff305275),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  height: 278,
                  color: Color(0xff305275),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 15, top: 15),
                              child: Text(
                                '1/10',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(right: 15, top: 15),
                              child: Text(
                                '09:29',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 38, right: 38, top: 84, bottom: 20),
                          child: Text(
                            'Q1. Description of the quiz the quiz Description of the quiz the quiz Description of the quiz the quiz',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                AnswerButton(
                  text: 'Answer 1',
                  buttonColor: disabledColor,
                  textColor: disabledTextColor,
                  margin: 32,
                ),
                AnswerButton(
                  text: 'Answer 2',
                  buttonColor: incorrectAnswerColor,
                  textColor: textColor,
                  margin: 32,
                ),
                AnswerButton(
                  text: 'Answer 3',
                  buttonColor: correctAnswerColor,
                  textColor: textColor,
                  margin: 25,
                ),
                AnswerButton(
                  text: 'Answer 4',
                  buttonColor: disabledColor,
                  textColor: disabledTextColor,
                  margin: 32,
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(left: 32, right: 32),
                  child: Text(
                    'Correct answer is C Correct answer is Correct answer is C Correct answer is C Correct answer is C Correct answer is C Correct answer is Correct answer is C Correct answer is C Correct answer is C',
                    style: TextStyle(
                      color: Color(0xff305275),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
