// ignore_for_file: deprecated_member_use
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/model.dart';
import '../listview.dart';
import '../widget/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Model> _model = [
    Model(
      iscompleate: true,
      titel: "Keep Going, No Matter What",
      body:
          "it was a great day you can get it done get it done before the money to be there for dinner tonight or you 😊 I hope you have good news is that and I hope to see hash browns in air compressor for the money to get it you can do it you look at the house I think I hope you are having fun with the money I hope to see you tomorrow at your house I think I have to be there for you can you want to be a good news I think I have to go to the money for the money to get it done and I will be there for you can you want to be a good news is that and you can do it done before then if you can get a great birthday and GitHub you can get it you can do it done before then if that's ok I hope you are having fun with the money I hope you are having fun with that and I hope you are having fun with that and I will be a great birthday and GitHub you can do it done before then if that's ok with that and you can do it done before the election and I hope to see hash browns in your life and I will be a good news I think it's good to me I will be there for the you are you from the money to get it you can get a great day you want to be a good news I have to get it you can get a great day you want to do for dinner tonight or you can get a great birthday and I hope you have a great day you can get it done before the money for the money to be there for you can get it done and I will be there for the you are you from the money for the money to be there for you can get it done and you have a good news is I will let him get your life 🧬 I will let her be there for you want me to be there by you can get a few things I have to go there in about a week to get your nods and smiles at the same time I have to get it you are having an amazing day today I love you can do to make you can get a few things to do in the you are you from bro you can do it done ✅ I will get a good one 🕜 I will let him know that and you can get a few more weeks to see 🙈 I will let her be able it you can do it done 👍hash and GitHub to meet me in the money to be a good news 🗞️ you 💞💞 you ❤️ I ❤️ I 💓 you 💕 you 💕💕 you 💗 I 💝 you ❤️ I ❣️ you ❤️❤️ I 💞 you 💝 you ❤️❤️ I 💖 you 💕 I can do to help me with that and GitHub you 💕💕 you 💕 I can get a good news 🗞️ I have to get your nods as a great birthday 🎂 you want to do it you can get it you can get it done before the money to be a great birthday and GitHub you want to do it you can get it done before the money to be a great birthday and I hope you have a great day you can get it done before the money to be a great birthday and I hope you have a great day you can get it done before the money to be a great birthday and I hope you have a great day I love it you look at your nods and I hope to see you soon I love you too you can do it you look at your nods and I hope to see hash browns in your nods as well I have to meet you there at the money to get it you can do it you look at your nods as well as the money for the you are you still at the house and I hope to see hash Brownsville TN I hope you have a great day you can do it you look at your life is good news is that and you can do it done before the election and GitHub you want me to be there for the you in your life is a good news I have good to me I hope you have good news is that and you can get it you can get a great day you want to do for the money to get it done and I will be a great birthday weekend",
      date: DateTime.now(),
    ),
    Model(
      iscompleate: false,
      titel: "How to Start Your App Development Journey?",
      body:
          "Start by learning the basics like Dart and Flutter. Set daily practice goals and build small projects to boost your understanding. Don’t rush—repetition and hands-on coding are the keys to mastery. With time, you'll see real progress and start building great apps on your own!",
      date: DateTime.now(),
    ),
    Model(
      titel: "Test Long Body",
      body:
          "This is a very long body text for a todo item that is intended to test how the UI handles wrapping or overflowing content inside a ListTile. It should either wrap to the next line or be truncated appropriately based on the design.",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "UI Check",
      body:
          "Make sure that long descriptions like this one, which might go on for several lines and include detailed instructions, are displayed correctly in both light and dark themes, and that the overall layout remains consistent and readable across different screen sizes.",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Responsive Test",
      body:
          "Sometimes users might enter extremely long notes or descriptions for their todos. This test checks how the application responds to these edge cases, ensuring that the text either wraps correctly or gets truncated with ellipsis if necessary.",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Very Long Body Text for Testing",
      body:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan. Arcu non sodales neque sodales ut etiam sit amet nisl purus in mollis nunc sed id semper risus in hendrerit gravida rutrum quisque non tellus orci.",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Edge Case Text",
      body:
          "Edge case: This is a todo with a body that simulates a user copy-pasting an entire paragraph or email body into the app. It's important to know how such input affects performance, layout, and usability of the app.",
      date: DateTime.now(),
      iscompleate: false,
    ),

    Model(
      titel: "Welcome",
      body: "This is a ToDo List App",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Add ToDo",
      body: "Click the + button to add a new ToDo",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Delete ToDo",
      body: "Swipe left to delete a ToDo",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Edit ToDo",
      body: "Tap on a ToDo to edit it",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Sort ToDo",
      body: "Use the sort button to arrange ToDos",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Filter ToDo",
      body: "Use the filter button to view specific ToDos",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Search ToDo",
      body: "Use the search bar to find a ToDo",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Settings",
      body: "Adjust app settings in the settings menu",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Help",
      body: "Access help and support in the help section",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Feedback",
      body: "Provide feedback to improve the app",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "About",
      body: "Learn more about the app in the about section",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Version",
      body: "Check the app version in the settings",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Privacy Policy",
      body: "Read the privacy policy in the settings",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Terms of Service",
      body: "Review the terms of service in the settings",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Notifications",
      body: "Manage notifications in the settings",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Updates",
      body: "Check for app updates in the settings",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Support",
      body: "Contact support for assistance",
      date: DateTime.now(),
      iscompleate: false,
    ),

    Model(
      titel: "Logout",
      body: "Log out of your account in the settings",
      date: DateTime.now(),
      iscompleate: false,
    ),
    Model(
      titel: "Exit",
      body: "Close the app from the settings menu",
      date: DateTime.now(),
      iscompleate: false,
    ),

    Model(
      titel: "Feedback",
      body:
          "hash and GitHub to meet me in the money to be a good news 🗞️ you 💞💞 you ❤️ I ❤️ I 💓 you 💕 you 💕💕 you 💗 I 💝 you ❤️ I ❣️ you ❤️❤️ I 💞 you 💝 you ❤️❤️ I 💖 you 💕 I can do to help me with that and GitHub you 💕💕 you 💕 I can get a good news 🗞️ I have to get your nods as a great birthday 🎂 you want to do it you can get it you can get it done before the money to be a great birthday and GitHub you want to do it you can get it done before the money to be a great birthday and I hope you have a great day you can get it done before the money to be a great birthday and I hope you have a great day you can get it done before the money to be a great birthday and I hope you have a great day I love it you look at your nods and I hope to see you soon I love you too you can do it you look at your nods and I hope to see hash browns in your nods as well I have to meet you there at the money to get it you can do it you look at your nods as well as the money for the you are you still at the house and I hope to see hash Brownsville TN I hope you have a great day you can do it you look at your life is good news is that and you can do it done before the election and GitHub you want me to be there for the you in your life is a good news I have good to me I hope you have good news is that and you can get it you can get a great day you want to do for the money to get it done and I will be a great birthday weekend  ",
      date: DateTime.now(),
      iscompleate: false,
    ),
  ];
  final dateformat = DateFormat.yMd();

  TextEditingController titlecontroler = TextEditingController();
  TextEditingController bodycontroler = TextEditingController();
  TextEditingController datecontroler = TextEditingController();
  final formaterdate = DateFormat.yMd();

  @override
  void dispose() {
    titlecontroler.dispose();
    bodycontroler.dispose();
    datecontroler.dispose();
    super.dispose();
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        controller: titlecontroler,
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          labelText: "Add Title",
                          prefixText: 'Title:',
                          hintText: "",
                          hintFadeDuration: Duration(milliseconds: 250),
                        ),
                        keyboardType: TextInputType.name,
                        maxLength: 50,
                        maxLines: null,
                      ),
                      TextField(
                        controller: bodycontroler,
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          labelText: "Add Body",
                          prefixText: 'Body:',
                          hintText: "body",
                        ),
                        keyboardType: TextInputType.name,
                        maxLines: null,
                      ),
                      TextField(
                        controller: datecontroler,
                        textAlign: TextAlign.center,
                        textInputAction: TextInputAction.done,
                        canRequestFocus: false,
                        decoration: const InputDecoration(
                          labelText: "Add Date",
                          prefixText: 'Date:',
                          hintText: "Enter date",
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
                                    iscompleate: false,
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
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      drawer: const DrawerWidget(),
      body: Listview(todo: _model),
    );
  }
}
