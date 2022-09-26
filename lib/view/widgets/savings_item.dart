import 'package:flutter/material.dart';
import 'package:listed_app/utils/styles.dart';

class SavingsItem extends StatelessWidget {
  final String text;
  final Color color;
  const SavingsItem({Key? key, required this.text, required this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle_rounded,
          size: 5,
          color: color,
        ),
        SizedBox(width: 2),
        Text(
          text,
          style: TextStyle(
            color: darkerBlue,
            fontSize: 8,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
