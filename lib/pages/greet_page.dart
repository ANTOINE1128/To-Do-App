import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/todo_page.dart';

class GreetPage extends StatefulWidget {
  const GreetPage({Key? key}) : super(key: key);

  @override
  State<GreetPage> createState() => _GreetPageState();
}

class _GreetPageState extends State<GreetPage> {
  TextEditingController myController = TextEditingController();
  String greetingMessage = '';

  void greetUser() {
  setState(() {
    String userName = myController.text.trim();
    if (userName.isNotEmpty) {
      String greetingMessage =
          'Hello, ' + userName[0].toUpperCase() + userName.substring(1);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ToDoPage(greetingMessage: greetingMessage),
        ),
      );
    } else {
      greetingMessage = 'Please enter your name';
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
              Text(greetingMessage),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "Type your name...",
                ),
              ),
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
