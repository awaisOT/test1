import 'package:flutter/material.dart';
import './quiz_form.dart';

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

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
    });
  }

  var questions = [
    {
      "questionText": "Your fvrt Programming Language",
      "optionsText": ["Python", "c++", "Js", "Dart"],
    },
    {
      "questionText": "Your fvrt Country",
      "optionsText": ["Pakistan", "South Korea", "Indonesia", "Saudi Arabia"],
    },
    {
      "questionText": "Your Career",
      "optionsText": [
        "Developer",
        "Researcher",
        "Business",
        "None of the Above"
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First APP'),
          ),
          body: questionIndex < questions.length
              ? QuizForm(questionIndex, quizlet, questions)
              : Center(
                  child: Column(
                    children: [
                      const Text('You did it'),
                      RaisedButton(
                        onPressed: resetQuiz,
                        child: const Text('reset Quiz'),
                      )
                    ],
                  ),
                ),
          backgroundColor: const Color.fromARGB(255, 204, 204, 204)),
    );
  }
}
