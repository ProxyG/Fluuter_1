import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Question extends StatelessWidget {
  final String _question;
  const Question(this._question);

  @override
  Widget build(BuildContext context) {
    return Card(child: Text(_question),);
  }
}