import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final VoidCallback handler;
  Options(this.handler);
  
  @override
  Widget build(BuildContext context) {
    return
    RaisedButton(
              onPressed: handler,
              child: const Text('question'),
            );
  }
}