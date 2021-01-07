import 'package:flutter/material.dart';
import 'package:Quizz/quizz_type_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:QuizTypeList(),
      debugShowCheckedModeBanner: false,
    );
  }
}
