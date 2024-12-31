import 'package:quiz/models/result.dart';
import 'package:quiz/models/question.dart';
import 'package:quiz/values/questions.dart';

Map<String, Object> getResults(Map<int, String> map) {
  Map<String, Object> results = {};
  List<Result> answers = [];
  List<Question> questions = Questions().questions;
  int correctAnswers = 0;
  map.forEach((key, value) {
    var question = questions[key];
    answers.add(Result(
        question: question.question,
        correctAnswer: question.answer,
        chosenAnswer: value,
        index: key,
        isCorrect: question.answer == value));
    question.answer == value ? correctAnswers++ : null;
  });
  results['correctAnswers'] = correctAnswers;
  results['totalQuestions'] = questions.length;
  results['answers'] = answers;
  return results;
}
