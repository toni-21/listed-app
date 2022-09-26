import 'package:flutter/material.dart';
import 'package:listed_app/utils/styles.dart';

class PercentageChip extends StatefulWidget {
  final String text;
  final Function? onPressed;
  final bool selected;
  const PercentageChip(
      {Key? key, required this.text, this.onPressed, required this.selected})
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _PercentageChipState();
  }
}

class _PercentageChipState extends State<PercentageChip> {
  Color currentColor = disabled;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 58,
        height: 30,
        decoration: BoxDecoration(
            color: widget.selected ? deepOrange : disabled,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Center(
          child: Text(widget.text),
        ));
  }
}
