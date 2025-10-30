import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final String childText;
  final double? childTextFontSize;
  final FontWeight? childTextFontWeight;
  final void Function()? onTap;

  const CustomButton({
    super.key,
    this.width,
    required this.childText,
    this.childTextFontSize,
    this.childTextFontWeight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Material(
        color: AppColor.myGreen,
        child: InkWell(
          onTap: onTap,
          splashColor: Colors.white12,
          highlightColor: Colors.white10,
          child: Container(
            height: 48,
            width: width ?? double.infinity,
            decoration: BoxDecoration(
              // color: color ?? AppColor.secondaryColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Text(
                childText,
                style: TextStyle(
                  color: AppColor.primaryTextColor,
                  fontSize: childTextFontSize ?? 16,
                  fontWeight: childTextFontWeight ?? FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
