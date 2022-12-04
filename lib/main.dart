import 'package:flutter/material.dart';
import 'package:quizz/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _questionIndex = 0;
  final _questions = [
    {
      'question': 'What\'s you favorite color',
      'answer': [
        'Black',
        'Blue',
        'Red',
        'Green',
      ]
    },
    {
      'question': 'What\'s you favorite fruit',
      'answer': [
        'Strawberry',
        'Banana',
        'Apple',
        'Cherry',
      ]
    },
    {
      'question': 'What\'s you favorite Vegetable',
      'answer': [
        'Carrot',
        'Tomato',
        'Pepper',
        'Brocoli',
      ]
    },
    {
      'question': 'What\'s you favorite tech field',
      'answer': [
        'Development',
        'Machine Learning',
        'Cyber-security',
        'Cloud',
      ]
    }
  ];

  void increment() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Quiz(_questions, increment, _questionIndex));
  }
}
