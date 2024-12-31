import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz/values/results.dart';

class QuizResult extends StatelessWidget {
  const QuizResult(this.map, {super.key, this.callback});

  final Function? callback;
  final Map<int, String>? map;

  @override
  Widget build(BuildContext context) {
    Map<String, Object> results = getResults(map!);

    return Container(
      margin: EdgeInsets.symmetric(vertical: 200),
      
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You got ${results['correctAnswers']} out of ${results['totalQuestions']} correct',
              style: GoogleFonts.lato(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            ),
            SizedBox(height: 20),
            ...(results['answers'] as List).map((answer) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    spacing: 10,
                    
                    
                    children: [
                      ResultText('Question:'), Expanded(child:ResultText('${answer.question}')),
                  ],)
                 ,
                  ResultText('Correct Answer: ${answer.correctAnswer}'),
                  ResultText('Your Answer: ${answer.chosenAnswer}'),
                  ResultText('Is Correct: ${answer.isCorrect}'),
                  SizedBox(height: 10),
                ],
              );
            }),
            ElevatedButton(
              onPressed: () => callback!('home'),
              child: Text('Go Home'),
            )
          ],
        ),
      ),
    );
  }
}


class ResultText extends StatelessWidget {
  const ResultText(this.result, {super.key});

  final String result;

  @override
  Widget build(BuildContext context) {
    return Text(
      result,
      style: GoogleFonts.lato(
          color: Colors.white,
          decoration: TextDecoration.none,
          fontSize: 20,
          fontWeight: FontWeight.normal),
    );
  }
}