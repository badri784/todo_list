import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_list/model/model.dart';

class OpenTodo extends StatelessWidget {
  const OpenTodo({super.key, required this.opentodo});
  final Model opentodo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(opentodo.titel)),
      body: Column(
        children: [
          InkWell(
            onLongPress: () {
              Clipboard.setData(ClipboardData(text: opentodo.body));
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("To_Do Body Copied !"),
                  padding: EdgeInsets.all(15),
                ),
              );
            },

            child: Text(
              opentodo.body,
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              selectionColor: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ],
      ),
    );
  }
}
