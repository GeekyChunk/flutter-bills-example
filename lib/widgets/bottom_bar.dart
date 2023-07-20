import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child:
              Icon(Icons.account_circle, size: 40, color: Colors.grey.shade700),
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red.shade300,
          child: const Icon(Icons.home, size: 40, color: Colors.white),
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Icon(Icons.settings, size: 40, color: Colors.grey.shade700),
        ),
      ],
    ));
  }
}
