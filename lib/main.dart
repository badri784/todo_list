// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list/statemangment/theme_mode_provider.dart';
import '../screens/home.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isdark = Theme.of(context).brightness == Brightness.dark;
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 3, 5, 92),
        ),
        appBarTheme: AppBarTheme(
          shape: const RoundedRectangleBorder(
            borderRadius: const BorderRadiusGeometry.vertical(
              bottom: Radius.circular(20),
            ),
          ),

          backgroundColor:
              isdark
                  ? Theme.of(context).colorScheme.scrim
                  : Theme.of(context).colorScheme.primary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 15)),
            iconSize: MaterialStateProperty.all(24),
            iconColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.surface,
            ),

            backgroundColor: MaterialStateProperty.all(
              isdark
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.primary,
            ),
            foregroundColor: MaterialStateProperty.all(
              isdark
                  ? Theme.of(context).colorScheme.onSurface
                  : Theme.of(context).colorScheme.surface,
            ),
          ),
        ),
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ref.watch(themeModeProvider),
      themeAnimationDuration: const Duration(microseconds: 2000),
      themeAnimationCurve: Curves.easeInOutCubic,
      home: const Home(),
    );
  }
}
