import 'package:flutter/material.dart';
import 'package:todoapp/utils/utils.dart';

class DisplayWhiteText extends StatelessWidget {
  const DisplayWhiteText(
      {super.key, required this.text, this.fontSize, this.fontWeight});

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headlineSmall?.copyWith(
          color: context.colorSchame.surface,
          fontWeight: fontWeight ?? FontWeight.bold,
          fontSize: fontSize),
    );
  }
}
