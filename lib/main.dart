import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First APP'),
        ),
        body: const Text('Body of my APP'),
        backgroundColor: const Color.fromARGB(226, 202, 202, 202),
      ),
    );
  }
}
