import 'package:flutter/material.dart';

class CustomGlobalText extends StatelessWidget {
  final String text;
  final double? textSize;
  final FontWeight? textWeight;
  final Color? textColor;
  const CustomGlobalText({
    super.key,
    required this.text,
    this.textSize,
    this.textWeight,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: textSize, fontWeight: textWeight, color: textColor),
    );
  }
}
