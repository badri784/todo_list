import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final usecolorScheme = Theme.of(context).colorScheme;
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryFixed,
      semanticLabel: "addition ",
      child: Column(
        children: [
          const DrawerHeader(child: Text("addition")),
          Text(
            "Hello world it's nice too meet u",
            style: TextStyle(color: usecolorScheme.surface),
          ),
        ],
      ),
    );
  }
}
