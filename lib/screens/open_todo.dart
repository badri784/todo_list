import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_list/model/model.dart';

class OpenTodo extends StatelessWidget {
  const OpenTodo({super.key, required this.opentodo});
  final Model opentodo;
  @override
  Widget build(BuildContext context) {
    bool isdark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          opentodo.titel,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),

          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient:
              isdark
                  ? const LinearGradient(colors: [Colors.black, Colors.black])
                  : const LinearGradient(colors: [Colors.white, Colors.white]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onLongPress: () {
                  Clipboard.setData(ClipboardData(text: opentodo.body));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("To_Do 'Body Copied !"),
                      padding: EdgeInsets.all(15),
                    ),
                  );
                },

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    opentodo.body,
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.visible,
                    selectionColor: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
