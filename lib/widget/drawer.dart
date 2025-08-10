import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_list/model/model.dart';
import 'package:todo_list/screens/settings_screen.dart';
import 'package:todo_list/screens/todo_done.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key, required this.modellist});
  final List<Model> modellist;

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    final usecolorScheme = Theme.of(context).colorScheme;
    bool isdark = Theme.of(context).brightness == Brightness.dark;

    return Drawer(
      backgroundColor:
          isdark
              ? usecolorScheme.surface
              : Theme.of(context).colorScheme.primary,
      semanticLabel: "addition ",
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: isdark ? usecolorScheme.surface : usecolorScheme.primary,
            ),
            child: Row(
              children: [
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => const SettingsScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.settings, size: 50),
                ),
                const SizedBox(width: 7),
                Text(
                  "setings",
                  style: TextStyle(
                    color: usecolorScheme.onSurface,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Done Todo ",
              style: TextStyle(
                color:
                    isdark
                        ? usecolorScheme.onSurface
                        : usecolorScheme.onSurface,
                fontSize: 20,
              ),
            ),
            titleAlignment: ListTileTitleAlignment.center,
            trailing: const Icon(Icons.done),
            onTap: () {
              final donelist =
                  widget.modellist.where((item) => item.iscompleate).toList();
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ToDoDone(tododone: donelist),
                ),
              );
              log(donelist.isNotEmpty.toString());
            },
          ),
        ],
      ),
    );
  }
}
