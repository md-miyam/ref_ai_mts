import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';

class HomeCustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  const HomeCustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? AppColor.primaryTextColor,
        fontSize: fontSize ?? 24,
        fontWeight: fontWeight ?? FontWeight.w600,
      ),
    );
  }
}
