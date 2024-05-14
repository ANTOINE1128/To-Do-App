import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({Key? key}) : super(key: key);

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // text editing controller
  TextEditingController myController = TextEditingController();
  // greeting message variable
  String greetingMessage = '';
  // greet user
  void greetUser() {
    setState(() {
      String userName = myController.text;
      String userInput =
          userName.trim(); // Remove leading and trailing whitespace
      if (userInput.isNotEmpty) {
        greetingMessage =
            'Hello, ' + userInput[0].toUpperCase() + userInput.substring(1);
      } else {
        greetingMessage = ''; // Handle empty input
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // greeting message
              Text(greetingMessage),
              // TEXT Field
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "Type your name...",
                ),
              ),
              // BUTTON create user
              ElevatedButton(
                onPressed: greetUser,
                child: const Text('TAP'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
