import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

import './quiz.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'what\'s your favorite color ?',
      'answers': [
        {'text': 'Green', 'score': 2},
        {'text': 'Red', 'score': 8},
        {'text': 'Blue', 'score': 4},
        {'text': 'Yellow', 'score': 6},
      ]
    },
    {
      'questionText': 'what\'s your favorite animal ?',
      'answers': [
        {'text': 'Rappit', 'score': 2},
        {'text': 'Snake', 'score': 8},
        {'text': 'Elaphant', 'score': 4},
        {'text': 'Lion', 'score': 6},
      ]
    },
    {
      'questionText': 'what\'s your favorite insructor ?',
      'answers': [
        {'text': 'Saleh', 'score': 2},
        {'text': 'Max', 'score': 8},
        {'text': 'Nabil', 'score': 4},
      ]
    }
  ];

  void _restQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuetion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore = _totalScore + score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: () => _answerQuetion(_totalScore),
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _restQuiz),
      ),
    );
  }
}
