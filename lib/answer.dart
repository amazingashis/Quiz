import 'package:flutter/material.dart';

class Answe extends StatelessWidget {
  final Function questi;
  final String answer;
  Answe(this.questi, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: questi,
        color: Colors.blue[200],
        textColor: Colors.black87,
        child: Text(answer),
      ),
    );
  }
}
