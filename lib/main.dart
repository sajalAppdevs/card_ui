import 'package:card_ui/home/bloc/home_bloc.dart';
import 'package:card_ui/home/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: const Color(0xff161621)),
      title: 'Credit Card Mobile App UI',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => HomeBloc(),
        child: const HomePage(),
      ),
    );
  }
}
