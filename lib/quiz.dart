import 'package:flutter/material.dart';
import './quesion.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> question;
  final int index;
  Quiz(
      {@required this.answerQuestion,
      @required this.question,
      @required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[index]['questionText'],
        ),
        ...(question[index]['answer'] as List<Map<String, Object>>).map((ans) {
          return Answe(() => answerQuestion(ans['score']), ans['text']);
        }).toList(),
      ],
    );
  }
}
