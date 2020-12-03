import 'package:flutter/material.dart';
import 'package:quiz_ui/quiz_constants.dart';

class QuizButtons extends StatelessWidget {
  final String text;
  final Function onPressed;
  QuizButtons({@required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            margin: EdgeInsets.only(left: 100, right: 100, top: 7, bottom: 7),
            child: RaisedButton(
              onPressed: onPressed,
              color: colorOrangePrimary,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Bullets extends StatelessWidget {
  final String text;
  Bullets({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 6, bottom: 6),
      child: Row(
        children: [
          Icon(
            Icons.fiber_manual_record,
            color: colorBlueText,
            size: 15,
          ),
          SizedBox(width: 10),
          Container(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: colorBlueText,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ReviewContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 12),
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          Text(
            '1. Description of the quiz the quiz Description of the quiz the quiz Description of the quiz the quiz',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff305275),
              fontWeight: FontWeight.w400,
            ),
          ),
          ReviewOptions(
              text: 'Answer 1',
              icon: Icon(
                Icons.radio_button_unchecked,
                color: Color(0xff305275),
                size: 20,
              )),
          ReviewOptions(
            text: 'Answer 2',
            icon: Icon(
              Icons.cancel,
              color: Colors.red,
              size: 20,
            ),
          ),
          ReviewOptions(
            text: 'Answer 3',
            icon: Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 20,
            ),
          ),
          ReviewOptions(
              text: 'Answer 4',
              icon: Icon(
                Icons.radio_button_unchecked,
                color: Color(0xff305275),
                size: 20,
              )),
          SizedBox(height: 6),
          Text(
            'Description Description Description Description Description Description Description Description',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xff305275),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewOptions extends StatelessWidget {
  final String text;
  final Icon icon;

  ReviewOptions({@required this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          icon,
          SizedBox(width: 12),
          Container(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff305275),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class AnswerButton extends StatelessWidget {
  final double margin;
  final String text;
  final Color buttonColor;
  final Color textColor;
  AnswerButton({
    @required this.text,
    @required this.buttonColor,
    @required this.textColor,
    @required this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            margin:
                EdgeInsets.only(left: margin, right: margin, top: 7, bottom: 7),
            child: RaisedButton(
              onPressed: () {
                //TODO : Responsiveness
              },
              color: buttonColor,
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
                side: BorderSide(color: Color(0xff305275), width: 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
