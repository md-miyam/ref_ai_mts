import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  final double? margin;
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? color;
  final String childText;
  final double? childTextFontSize;
  final FontWeight? childTextFontWeight;

  const CustomButton({
    super.key,
    this.margin,
    this.height,
    this.width,
    this.color,
    this.borderRadius,
    required this.childText,
    this.childTextFontSize,
    this.childTextFontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: margin ?? 0),
      height: height ?? 48,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: color ?? AppColor.secondaryColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 4),
      ),
      child: Center(
        child: Text(
          childText,
          style: TextStyle(
            color: AppColor.myWhite,
            fontSize: childTextFontSize ?? 16,
            fontWeight: childTextFontWeight ?? FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
