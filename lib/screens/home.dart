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
    Model(titel: "", body: "body", dateTime: dateformat),
  ];

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
                child: const Column(children: [Text("0000")]),
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
