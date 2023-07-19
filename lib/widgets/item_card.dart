import 'package:flutter/material.dart';
import 'package:niceapp/styles.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.note,
    required this.timestamp,
    required this.color,
  });

  final String title;
  final String subTitle;
  final String note;
  final String timestamp;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 10),
          Text(
            subTitle,
            style: cardText,
          ),
          const SizedBox(height: 10),
          Text(
            title,
            style: cardTitle,
          ),
          const SizedBox(height: 30),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              note,
              style: cardText,
            ),
            Text(
              timestamp,
              style: cardText,
            ),
          ])
        ]),
      ),
    );
  }
}
