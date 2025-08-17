import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeModeProvider extends StateNotifier<ThemeMode> {
  ThemeModeProvider() : super(ThemeMode.light);
  // void onToggleThme() {
  //   state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  // }

  void ontoggletheme() {
    if (state == ThemeMode.light) {
      state = ThemeMode.dark;
    } else {
      state = ThemeMode.light;
    }
  }
}

final themeModeProvider = StateNotifierProvider<ThemeModeProvider, ThemeMode>(
  (_) => ThemeModeProvider(),
);
