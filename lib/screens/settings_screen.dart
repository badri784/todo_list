// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list/statemangment/theme_mode_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text("Theme"),
            subtitle: const Text("Dark Theme"),
            value: ref.watch(themeModeProvider) == ThemeMode.dark,
            onChanged: (bool value) {
              // ignore: invalid_use_of_visible_for_testing_member
              ref.read(themeModeProvider.notifier).state =
                  themeMode == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
            },
          ),
        ],
      ),
    );
  }
}
