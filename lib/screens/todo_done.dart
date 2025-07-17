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
                color: Theme.of(context).colorScheme.surface,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isdark
                        ? Image.asset('image/image.png')
                        : ClipRRect(
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset("image/image1.jpg"),
                        ),
                    const SizedBox(height: 7),
                    Text(
                      "No completed tasks yet !",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              )
              : Container(
                padding: const EdgeInsets.all(5),
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    ...tododone.map(
                      (item) => Card.outlined(
                        child: ListTile(
                          title: Text(
                            item.titel.toString(),
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          trailing: CircleAvatar(
                            backgroundColor:
                                isdark
                                    ? Theme.of(
                                      context,
                                    ).colorScheme.onSecondaryFixedVariant
                                    : Theme.of(context).colorScheme.surface,
                            child: const Icon(Icons.done),
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
