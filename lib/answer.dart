import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final Function _increment;
  const Answer(this._answer,this._increment);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: _increment as void Function(), child: Text(_answer)),
    );
  }
}