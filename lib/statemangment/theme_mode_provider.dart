import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeModeProvider extends StateNotifier<ThemeMode> {
  ThemeModeProvider() : super(ThemeMode.light);
  final themeMode = StateProvider<ThemeMode>((ref) => ThemeMode.light);
}

final themeModeProvider = StateNotifierProvider<ThemeModeProvider, ThemeMode>(
  (_) => ThemeModeProvider(),
);
