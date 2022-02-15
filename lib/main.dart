// ignore_for_file: prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("My first App")),
        body: Column(children: [
          Question(questions[_questionIndex]),
          RaisedButton(
            child: const Text("Answer 1"),
            // ignore: avoid_print
            onPressed: () => print("Answer 1 chosen"),
          ),
          RaisedButton(
            child: const Text("Answer 2"),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: const Text("Answer 3"),
            onPressed: () => print("Answer 3 chosen"),
          ),
        ]),
      ),
    );
  }
}
