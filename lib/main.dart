import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_default_app/answer.dart';
import 'package:flutter_default_app/quiz.dart';
import 'package:flutter_default_app/result.dart';
import './question.dart';

void main() {
  runApp(MyDefaultClass());
}

class MyDefaultClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyDefaultClassState();
  }
}

class MyDefaultClassState extends State<MyDefaultClass> {
  var qindex = 0;
  var _totalScore = 0;

  void resetApp(){
    setState(() {
      qindex = 0;
      _totalScore = 0;
    });
  }

  showSth(int score) {
    _totalScore+=score;
    setState(() {
      qindex = qindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var q = const [
      {
        'qText': 'What\'s your favorite color?',
        'AnsText': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3},
          {'text': 'White', 'score': 1},
        ],
      },
      {
        'qText': 'What\'s your favorite animal?',
        'AnsText': [
          {'text': 'Rabbit', 'score': 3},
          {'text': 'Snake', 'score': 11},
          {'text': 'Elephant', 'score': 5},
          {'text': 'Lion', 'score': 9},
        ],
      },
      {
        'qText': 'Who\'s your favorite instructor?',
        'AnsText': [
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
        ],
      },
    ];

    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hi"),
        ),
        body: qindex < q.length
            ? Quiz(q, qindex, showSth)
            : Result(_totalScore,resetApp),
      ),
    );
  }
}
