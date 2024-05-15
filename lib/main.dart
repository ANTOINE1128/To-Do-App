// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/todo_page.dart';
import 'package:flutter_application_1/pages/greet_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const GreetPage(),
      routes: {
        '/todopage': (context) => ToDoPage(
              greetingMessage:
                  'Hello', // Adjust the greeting message as needed
            ),
        '/greetpage': (context) => const GreetPage(),
      },
    );
  }
}
