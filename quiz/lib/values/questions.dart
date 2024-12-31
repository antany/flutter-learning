import 'package:quiz/models/question.dart';


class Questions {
  List<Question> get questions {
    return List<Question>.from([
      Question(
        question: 'What is the capital of France?',
        answer: 'Paris',
        options: ['London', 'New York', 'Paris', 'Dublin'],
      ),
      Question(
        question: 'What is the capital of Spain?',
        answer: 'Madrid',
        options: ['Paris', 'Madrid', 'Rome', 'Lisbon'],
      ),
      Question(
        question: 'What is the capital of Portugal?',
        answer: 'Lisbon',
        options: ['Madrid', 'Lisbon', 'Rome', 'Paris'],
      ),
      Question(
        question: 'What is the capital of Italy?',
        answer: 'Rome',
        options: ['Madrid', 'Lisbon', 'Rome', 'Paris'],
      ),
      Question(
        question: 'What is the capital of Ireland?',
        answer: 'Dublin',
        options: ['Madrid', 'Lisbon', 'Rome', 'Dublin'],
      ),
      Question(
        question: 'What is the capital of France?',
        answer: 'Paris',
        options: ['London', 'New York', 'Paris', 'Dublin'],
      ),
      Question(
        question: 'What is the capital of Spain?',
        answer: 'Madrid',
        options: ['Paris', 'Madrid', 'Rome', 'Lisbon'],
      ),
      Question(
        question: 'What is the capital of Portugal?',
        answer: 'Lisbon',
        options: ['Madrid', 'Lisbon', 'Rome', 'Paris'],
      ),
      Question(
        question: 'What is the capital of Italy?',
        answer: 'Rome',
        options: ['Madrid', 'Lisbon', 'Rome', 'Paris'],
      ),
      Question(
        question: 'What is the capital of Ireland?',
        answer: 'Dublin',
        options: ['Madrid', 'Lisbon', 'Rome', 'Dublin'],
      ),
    ]);
  }
}
