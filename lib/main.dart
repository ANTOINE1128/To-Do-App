// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/greet_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GreetPage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: {
        '/todopage': (context) => HomePage(
              greetingMessage:
                  'Hello,world', // Adjust the greeting message as needed
            ),
        '/greetpage': (context) => GreetPage(),
      },
    );
  }
}
