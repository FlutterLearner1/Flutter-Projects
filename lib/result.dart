import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final Function _resetApp;
  Result(this._totalScore, this._resetApp);

  String get total_Score {
    return 'You\'re total score is ' + _totalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            total_Score,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
          RaisedButton(
            child: Text("reset"),
            onPressed: _resetApp,
          ),
        ],
      ),
    );
  }
}
