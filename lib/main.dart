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
    return MaterialApp(
      // Light theme
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF244968),
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          backgroundColor: Color(0xFF244968),
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 15),
            backgroundColor: const Color(0xFF244968),
            foregroundColor: Colors.white,
          ),
        ),
      ),

      // Dark theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF244968),
          brightness: Brightness.dark,
        ),
        appBarTheme: const AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          backgroundColor: Color.fromARGB(255, 28, 42, 53),
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 15),
            backgroundColor: const Color.fromARGB(255, 36, 73, 104),
            foregroundColor: Colors.white,
          ),
        ),
      ),
      themeAnimationStyle: const AnimationStyle(
        reverseCurve: Curves.easeInOutCubicEmphasized,
      ),

      themeMode: ref.watch(themeModeProvider),
      themeAnimationDuration: const Duration(microseconds: 1100),
      themeAnimationCurve: Curves.easeInOutCubic,
      home: const Home(),
    );
  }
}
