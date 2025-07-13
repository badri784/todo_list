import 'package:flutter/material.dart';
import '../model/model.dart';

class EditScreen extends StatefulWidget {
  final Model todo;
  final Function(Model) onSave;

  const EditScreen({super.key, required this.todo, required this.onSave});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  late TextEditingController _titleController;
  late TextEditingController _bodyController;
  // final _dateFormat = DateFormat.yMd();

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.todo.titel);
    _bodyController = TextEditingController(text: widget.todo.body);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _bodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit ToDo')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _bodyController,
              decoration: const InputDecoration(labelText: 'Body'),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                final Model updated = Model(
                  titel: _titleController.text.trim(),
                  body: _bodyController.text.trim(),
                  date: DateTime.now(),
                );
                widget.onSave(updated);
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.save),
              label: const Text("Save Changes"),
            ),
          ],
        ),
      ),
    );
  }
}
