import 'package:flutter/material.dart';
import '../model/model.dart';

class ToDoDone extends StatelessWidget {
  const ToDoDone({super.key, required this.tododone});
  final List<Model> tododone;
  @override
  Widget build(BuildContext context) {
    bool isdark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ToDo Done",
          style: TextStyle(
            color:
                isdark
                    ? Theme.of(context).colorScheme.onSurface
                    : Theme.of(context).colorScheme.onSecondaryFixed,
          ),
        ),
        centerTitle: true,
      ),
      body:
          tododone.isEmpty
              ? Container(
                color: Colors.white,
                width: double.infinity,
                height: double.infinity,
                child: Text(
                  "No Todo done",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              )
              : Column(
                children: [
                  ...tododone.map(
                    (item) => Text(
                      item.titel.toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
    );
  }
}
