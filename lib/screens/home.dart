// ignore_for_file: deprecated_member_use
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/model.dart';
import '../widget/listview.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Model> _model = [
    Model(
      titel: "Welcome",
      body: "This is a ToDo List App",
      date: DateTime.now(),
    ),
    Model(
      titel: "Add ToDo",
      body: "Click the + button to add a new ToDo",
      date: DateTime.now(),
    ),
    Model(
      titel: "Delete ToDo",
      body: "Swipe left to delete a ToDo",
      date: DateTime.now(),
    ),
    Model(
      titel: "Edit ToDo",
      body: "Tap on a ToDo to edit it",
      date: DateTime.now(),
    ),
    Model(
      titel: "Sort ToDo",
      body: "Use the sort button to arrange ToDos",
      date: DateTime.now(),
    ),
    Model(
      titel: "Filter ToDo",
      body: "Use the filter button to view specific ToDos",
      date: DateTime.now(),
    ),
    Model(
      titel: "Search ToDo",
      body: "Use the search bar to find a ToDo",
      date: DateTime.now(),
    ),
    Model(
      titel: "Settings",
      body: "Adjust app settings in the settings menu",
      date: DateTime.now(),
    ),
    Model(
      titel: "Help",
      body: "Access help and support in the help section",
      date: DateTime.now(),
    ),
    Model(
      titel: "Feedback",
      body: "Provide feedback to improve the app",
      date: DateTime.now(),
    ),
  ];
  final dateformat = DateFormat.yMd();

  TextEditingController titlecontroler = TextEditingController();
  TextEditingController bodycontroler = TextEditingController();
  TextEditingController datecontroler = TextEditingController();
  final formaterdate = DateFormat.yMd();

  @override
  void dispose() {
    super.dispose();
    titlecontroler.dispose();
    bodycontroler.dispose();
    datecontroler.dispose();
    titlecontroler.clear();
    bodycontroler.clear();
    datecontroler.clear();
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final firstdate = DateTime(now.year - 5, now.month, now.day);
    final lastdate = DateTime(now.year + 2, now.month, now.day);
    final inintial = DateTime.now();
    bool isdark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDO-List"),
        centerTitle: true,
        backgroundColor:
            isdark
                ? Theme.of(context).colorScheme.surface
                : Theme.of(context).colorScheme.primary,
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
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        labelText: "Add Title",
                        prefixText: 'Title:',
                      ),
                      keyboardType: TextInputType.name,
                      maxLength: 15,
                    ),
                    TextField(
                      controller: bodycontroler,
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        labelText: "Add Body",
                        prefixText: 'Body:',
                      ),
                      keyboardType: TextInputType.name,
                      maxLength: 350,
                    ),
                    TextField(
                      controller: datecontroler,
                      textAlign: TextAlign.center,
                      textInputAction: TextInputAction.done,
                      canRequestFocus: false,
                      decoration: const InputDecoration(
                        labelText: "Add Date",
                        prefixText: 'Date:',
                      ),

                      readOnly: true,
                      onTap: () async {
                        final pickedDate = await showDatePicker(
                          context: context,
                          initialDate: inintial,
                          firstDate: firstdate,
                          lastDate: lastdate,
                        );
                        if (pickedDate != null) {
                          datecontroler.text = dateformat.format(pickedDate);
                        }
                      },
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            if (titlecontroler.text.trim().isEmpty ||
                                bodycontroler.text.trim().isEmpty) {
                              showDialog(
                                context: context,
                                builder:
                                    (context) => AlertDialog(
                                      title: const Text("Error !"),
                                      content: const Text(
                                        "please enter a title or body for your todo's",
                                      ),

                                      actions: [
                                        IconButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: const Icon(Icons.cancel),
                                        ),
                                      ],
                                    ),
                              );
                              return;
                            }
                            setState(() {
                              _model.add(
                                Model(
                                  titel: titlecontroler.text,
                                  body: bodycontroler.text,
                                  date: DateTime.now(),
                                ),
                              );
                            });
                            Navigator.of(context).pop();
                            log(titlecontroler.toString());
                            log(bodycontroler.toString());
                            log(datecontroler.toString());
                          },
                          icon: const Icon(Icons.save),
                          label: const Text("Save"),
                        ),
                        const SizedBox(width: 35),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(Icons.cancel),
                          label: const Text("Cansel"),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Listview(todo: _model),
    );
  }
}
