import 'package:flutter/material.dart';

class ToDoPage extends StatelessWidget {
  final String greetingMessage;

  const ToDoPage({Key? key, required this.greetingMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDoPage'),
      ),
      body: Center(
        child: Text(greetingMessage),
      ),
    );
  }
}
