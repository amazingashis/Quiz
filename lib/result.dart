import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final score;
  final Function reset;
  Result(this.score, this.reset);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'You did it',
            style: TextStyle(
                color: Colors.blue[300],
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: reset,
            child: Text('Reset Quiz'),
            color: Colors.yellow[200],
          )
        ],
      ),
    );
  }
}
