import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final VoidCallback handler;
  final String optionCount;
  const Options(this.handler, this.optionCount);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: handler,
      color: const Color.fromARGB(255, 0, 140, 255),
      child: Text(optionCount),
    );
  }
}
