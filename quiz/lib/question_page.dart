import 'package:flutter/material.dart';
import 'package:quiz/models/question.dart';

import 'package:quiz/values/questions.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cwidgets/answer_button.dart';

class QuestionPage extends StatefulWidget {
  QuestionPage({super.key,this.callback});

  final Map<int, String> map = {};
  final Function? callback;

  @override
  createState() => _QuestionPageState();
}

List<Question> qs = Questions().questions;

class _QuestionPageState extends State<QuestionPage> {
  int currentindex = 0;

  void nextQuestion(String answer) {
    widget.map[currentindex] = answer;
    if (currentindex < qs.length - 1) {
      setState(() {
        currentindex++;
      });
    } else {
      widget.callback!("result", widget.map);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          qs[currentindex].question,
          style: GoogleFonts.lato(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize: 20,
              fontWeight: FontWeight.normal),
        ),
        SizedBox(height: 20),
        ...qs[currentindex].options.map((option) {
            return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: AnswerButton(option, action: () => nextQuestion(option)),
            );
        }),
      ],
    );
  }
}
