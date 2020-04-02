import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> _q;
  final int _qindex;
  final Function _showSth;

  Quiz(this._q,this._qindex,this._showSth);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Question(_q[_qindex]["qText"]),
        ...(_q[_qindex]['AnsText'] as List<Map<String,Object>>).map((answ) {
          return Answer(answ['text'], () => _showSth(answ['score']));
        }).toList(),
      ],
    );
  }
}
