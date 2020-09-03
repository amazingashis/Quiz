import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var score;
  var totalscore = 0;
  var _questions = [
    {
      'questionText': 'Which is your favourite Color?',
      'answer': [
        {'text': 'Red', 'score': 10},
        {'text': 'Black', 'score': 9},
        {'text': 'Blue', 'score': 8}
      ],
    },
    {
      'questionText': 'Which is your favourite food?',
      'answer': [
        {'text': 'Pizza', 'score': 10},
        {'text': 'Chowmin', 'score': 9},
        {'text': 'Momo', 'score': 8}
      ],
    },
    {
      'questionText': 'Which is your favourite movie?',
      'answer': [
        {'text': 'Bhoot', 'score': 10},
        {'text': 'soley', 'score': 9},
        {'text': 'Darar', 'score': 8}
      ],
    },
  ];

  void _answerQuestion(score) {
    setState(() {
      _index = _index + 1;
      totalscore += score;
    });
    if (_index < _questions.length) {}

    print(_index);
  }

  void resetQuiz() {
    setState(() {
      totalscore = 0;
      _index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _index < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                question: _questions,
                index: _index)
            : Result(totalscore, resetQuiz),
      ),
    );
  }
}
