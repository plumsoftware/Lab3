import 'package:flutter/material.dart';
import 'package:lab3/themes/AppTheme.dart';
import 'package:lab3/pages/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme(context),
      home: const HomePage(),
    );
  }
}
