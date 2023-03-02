import 'package:card_ui/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Credit Card Mobile App UI',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
