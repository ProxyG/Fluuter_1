import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quizz/answer.dart';
import 'package:quizz/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final int _index;
  final Function _increment;
  const Quiz(this._questions, this._increment, this._index);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Question(
            _questions[_index]['question'] as String,
          ),
          ...(_questions[_index]['answer'] as List<String>).map(
            (answer) => Answer(
              answer,
              _increment
            ),
          )
        ],
      ),
    );
  }
}
