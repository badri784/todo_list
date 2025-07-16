import 'package:flutter/material.dart';
import 'package:todo_list/screens/edit_screen.dart';
import 'package:todo_list/screens/open_todo.dart';
import '../model/model.dart';
import 'package:intl/intl.dart';

class Listview extends StatefulWidget {
  const Listview({super.key, required this.todo});
  final List<Model> todo;

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  final datepiker = DateFormat.yMd();

  @override
  Widget build(BuildContext context) {
    return widget.todo.isEmpty
        ? SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('image/data.png'),
                const SizedBox(height: 7),
                Text(
                  "Tap On The Botton To Add Todo's !",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        )
        : ListView.builder(
          itemCount: widget.todo.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
              child: Dismissible(
                key: Key(widget.todo[index].titel),
                background: Container(
                  color: Theme.of(context).colorScheme.error,
                ),
                secondaryBackground: const Icon(Icons.delete),
                onDismissed:
                    (direction) => setState(() {
                      widget.todo.removeAt(index);
                    }),

                child: ListTile(
                  leading: Checkbox(
                    value: widget.todo[index].iscompleate,
                    onChanged: (value) {
                      setState(() {
                        widget.todo[index].iscompleate = value!;
                      });
                    },
                  ),
                  title: Text(
                    " Title: ${widget.todo[index].titel}",
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                  subtitle: Text(
                    " Body: ${widget.todo[index].body}",
                    softWrap: true,
                    maxLines: 2,
                    textScaleFactor: 0.9,
                  ),
                  trailing: Text(" Date: ${widget.todo[index].formattedDate}"),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder:
                            (context) => OpenTodo(opentodo: widget.todo[index]),
                      ),
                    );
                  },
                  onLongPress: () async {
                    await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder:
                            (_) => EditSecreen(
                              todo: widget.todo[index],
                              onsave: (Model updated) {
                                setState(() {
                                  widget.todo[index] = updated;
                                });
                              },
                            ),
                      ),
                    );
                  },
                ),
              ),
            );
          },
        );
  }
}
