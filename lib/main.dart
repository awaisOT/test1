import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void quizlet(){
    print('this is a quizlet');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First APP'),
        ),
        body: Column(children:  [
         Text('This is quiz 1'),
          RaisedButton(
            onPressed: quizlet,
            child: const Text('question 1'),
          ),
          const RaisedButton(
            onPressed: null,
            child: Text('question 2'),
          ),
          const RaisedButton(
            onPressed: null,
            child: Text('question 3'),
          ),
        ]),
        backgroundColor: const Color.fromARGB(226, 202, 202, 202),
      ),
    );
  }
}
