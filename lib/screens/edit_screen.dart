import 'package:flutter/material.dart';
import 'package:todo_list/model/model.dart';

class EditSecreen extends StatefulWidget {
  const EditSecreen({super.key, required this.todo, required this.onsave});
  final Model todo;
  final Function(Model) onsave;
  @override
  State<EditSecreen> createState() => _EditSecreenState();
}

class _EditSecreenState extends State<EditSecreen> {
  late TextEditingController _titleController = TextEditingController();
  late TextEditingController _bodyController = TextEditingController();
  @override
  void initState() {
    _titleController = TextEditingController(text: widget.todo.titel);
    _bodyController = TextEditingController(text: widget.todo.body);
    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isdark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit ToDo's",
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
        backgroundColor:
            isdark
                ? Theme.of(context).colorScheme.surface
                : Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                prefixText: '  Title :',
                label: Text("  Title"),
              ),
              controller: _titleController,
              textAlign: TextAlign.justify,
              keyboardType: TextInputType.name,
              maxLength: 50,
            ),
            TextField(
              decoration: const InputDecoration(
                prefixText: '  body :',
                label: Text("  Body"),
              ),
              controller: _bodyController,
              textAlign: TextAlign.justify,
              keyboardType: TextInputType.name,
              maxLines: null,
            ),

            const SizedBox(height: 22),
            ElevatedButton(
              onPressed: () {
                final updated = Model(
                  titel: _titleController.toString().trim(),
                  body: _bodyController.toString().trim(),
                  date: DateTime.now(),
                  iscompleate: false,
                );
                widget.onsave(updated);
                Navigator.of(context).pop();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.save),
                    const SizedBox(width: 7),
                    Text(
                      "Save Changes",
                      style: TextStyle(
                        color:
                            isdark
                                ? Theme.of(context).colorScheme.onSurface
                                : Theme.of(context).colorScheme.surface,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
