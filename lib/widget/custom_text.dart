import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.overflow,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? AppColor.primaryTextColor,
        fontSize: fontSize ?? 24,
        fontWeight: fontWeight ?? FontWeight.w600,
        overflow: overflow ?? TextOverflow.fade,
      ),
      textAlign: textAlign ?? TextAlign.start,
    );
  }
}
