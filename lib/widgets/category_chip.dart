import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String text;
  final Color textCOlor;
  final Color backGroundColor;
  CategoryChip(
      {super.key,
      required this.textCOlor,
      required this.backGroundColor,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      // width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text.toString(),
            style: TextStyle(
              color: textCOlor,
            ),
          ),
        ),
      ),
    );
  }
}
