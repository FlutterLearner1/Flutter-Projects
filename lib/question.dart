import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionInput;
  Question(this._questionInput);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _questionInput,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20,backgroundColor: Color(0xFF42A5F5),),
      ),
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(40),
    );
  }
}
