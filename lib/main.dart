import 'package:flutter/material.dart';
import 'package:task2/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(
          name: '',
          stack: '',
          email: '',
          about: '',
          education1: '',
          education2: '',
          experience: '',
          slackname: '',
          course1: '',
          course2: ''),
    );
  }
}
