import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';

class CustomRichText extends StatelessWidget {
  final String firstText;
  final String secondText;
  const CustomRichText({super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: firstText,
            style: TextStyle(color: AppColor.secondaryTextColor, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: secondText,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
