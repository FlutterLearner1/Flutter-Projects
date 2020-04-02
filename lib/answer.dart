import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final Function answerFunction;

  Answer(this._answerText, this.answerFunction);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: RaisedButton(
        child: Text( _answerText),
        onPressed: answerFunction,
        color: Colors.blueAccent,
        textColor: Colors.white,
      ),
      width: double.infinity,
    );
  }
}
