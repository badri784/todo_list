import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todo_list/model/model.dart';
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
      backgroundColor: Theme.of(context).colorScheme.surface,
      semanticLabel: "addition ",
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: usecolorScheme.surface),
            child: Row(
              children: [
                const Icon(Icons.settings, size: 40),
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
                    isdark ? usecolorScheme.onSurface : usecolorScheme.surface,
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
