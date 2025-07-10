// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import '../model/model.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final dateformat = DateFormat.yMd();

  final List<Model> _model = [
    Model(
      titel: "work",
      body: "Finish the weekly report and send it to the manager before 5 PM.",
      dateTime: DateTime.now(),
    ),
    Model(
      titel: "for fun",
      body: "Watch an episode of your favorite series or play a quick game.",
      dateTime: DateTime.now(),
    ),
    Model(
      titel: "lappppp",
      body: "Clean the laptop screen and check for software updates.",
      dateTime: DateTime.now(),
    ),
    Model(
      titel: "lesure",
      body: "Go out for a walk or relax with a book at the café.",
      dateTime: DateTime.now(),
    ),
    Model(
      titel: "eduction",
      body: "Complete the Flutter state management module today.",
      dateTime: DateTime.now(),
    ),
  ];
  TextEditingController titlecontroler = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    titlecontroler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDO-List"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add ToDo',
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            barrierLabel: 'add To-Do List',
            context: context,
            builder: (BuildContext context) {
              return Container(
                margin: const EdgeInsets.all(13),
                width: double.infinity,
                height: 750,
                child: Column(
                  children: [
                    TextField(
                      controller: titlecontroler,
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        labelText: "Add Title",
                        prefixText: 'Title:',
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: null,
    );
  }
}
