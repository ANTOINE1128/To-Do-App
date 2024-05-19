// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/greet_page.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  // init the hive
 await Hive.initFlutter();
 // open the box
 var box = await Hive.openBox('myBox');
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
        secondaryHeaderColor: Colors.green,
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
