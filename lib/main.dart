import 'package:flutter/material.dart';
import 'package:tugasp10/form_login.dart';
import 'package:tugasp10/home_screen.dart';
import 'package:tugasp10/form_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const home_screen(),
      routes: {
        home_screen.routes: (context) => const home_screen(),
        form_screen.routes: (context) => const form_screen(),
      },
    );
  }
}
