import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.onPrimaryFixed,
      semanticLabel: "addition ",
      child: const Column(
        children: [
          Text("000000000000000000", style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
