import 'package:flutter/material.dart';
import 'package:flutter_application_1/options.dart';
import './question.dart';
import './options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void quizlet() {
    setState(() {
      questionIndex++;
    });
  }

  var questions = [
    'Your fvrt Programming Language',
    'Your fvrt Country',
    'Your Career'
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First APP'),
          ),
          body: Column(children: [
            Question(questions[questionIndex]),
            Options(quizlet),
            Options(quizlet),
            Options(quizlet)
          ]),
          backgroundColor: Color.fromARGB(255, 204, 204, 204)),
    );
  }
}
