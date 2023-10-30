import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectedHandler;
  final String answer;
  Answer(this.selectedHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: selectedHandler,
        child: Text(answer),
      ),
    );
  }
}
