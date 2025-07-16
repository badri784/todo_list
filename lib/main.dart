// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: const Color.fromARGB(255, 176, 174, 180),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 15)),
            iconSize: MaterialStateProperty.all(24),
            iconColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.surface,
            ),
            backgroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.primary,
            ),
            foregroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.surface,
            ),
          ),
        ),
      ),
      home: const Home(),
    );
  }
}
