import 'package:flutter/material.dart';
import 'bg_theme.dart';
import 'home_page.dart';
import 'question_page.dart';
import 'quiz_result.dart';

void main() {
  runApp(MaterialApp(
    title: 'Quiz',
    home: Quiz(),
  ));
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String currentScreenName = 'home';
  Map<int, String>? answers;

  void changeScreen(String screenName) {
    setState(() {
      currentScreenName = screenName;
    });
  }

  void showResult(String result, Map<int, String> map) {
    setState(() {
      currentScreenName = result;
      answers = map;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Background(
        child: currentScreenName == 'home'
            ? HomePage(changeScreen)
            : currentScreenName == 'quiz'
                ? QuestionPage(callback: showResult,)
                : QuizResult(answers,callback: changeScreen,));
  }
}
