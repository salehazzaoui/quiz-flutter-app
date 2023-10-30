import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback restHandler;
  Result(this.score, this.restHandler);

  String get scorePhrase {
    var phrase = 'You did it';
    if (score <= 8) {
      phrase = 'You are awsome';
    } else if (score <= 12) {
      phrase = 'You are pretty good';
    } else if (score <= 16) {
      phrase = 'You have some problems';
    } else {
      phrase = 'You are a bad preson';
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            scorePhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            child: Text('Rest the quiz'),
            onPressed: restHandler,
          )
        ],
      ),
    );
  }
}
