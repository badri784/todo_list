// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_list/statemangment/theme_mode_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings"), centerTitle: true),
      body: Column(
        children: [
          Card.outlined(
            child: SwitchListTile(
              title: const Text("Theme"),
              isThreeLine: false,
              autofocus: true,
              subtitle: const Text("Dark Theme"),
              contentPadding: const EdgeInsets.only(right: 15, left: 15),
              value: ref.watch(themeModeProvider) == ThemeMode.dark,
              onChanged:
                  (bool value) =>
                      ref.read(themeModeProvider.notifier).ontoggletheme(),
            ),
          ),
        ],
      ),
    );
  }
}
