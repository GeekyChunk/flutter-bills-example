import 'package:flutter/material.dart';

class ActionItem extends StatelessWidget {
  const ActionItem({
    super.key,
    required this.title,
    required this.iconImage,
  });

  final String iconImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.blue.shade100,
      hoverColor: Colors.blue.shade100,
      focusColor: Colors.blue.shade300,
      borderRadius: BorderRadius.circular(20),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        child: Column(
          children: [
            Container(
              height: 90,
              width: 100,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 20,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Image.asset(
                iconImage,
                width: 50,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(title,
                style: TextStyle(fontSize: 20, color: Colors.grey.shade800)),
          ],
        ),
      ),
    );
  }
}
