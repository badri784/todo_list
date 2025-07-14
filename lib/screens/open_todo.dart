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
          maxLines: null,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient:
              isdark
                  ? const LinearGradient(colors: [Colors.black, Colors.black])
                  : LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.secondaryFixedDim,
                      Theme.of(
                        context,
                      ).colorScheme.secondaryFixedDim.withOpacity(0.9),
                      Theme.of(
                        context,
                      ).colorScheme.secondaryFixedDim.withOpacity(0.8),
                      Theme.of(
                        context,
                      ).colorScheme.secondaryFixedDim.withOpacity(0.7),
                    ],
                  ),
        ),
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
                child: SingleChildScrollView(
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
            ),
          ],
        ),
      ),
    );
  }
}
