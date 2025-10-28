import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';

class CustomTextField extends StatefulWidget {
  final double? horizontalPadding;
  final double? verticalPadding;
  final String hintText;
  final IconData? suffixIcon;
  final double? suffixIconSize;
  final bool showSuffixIcon;

  const CustomTextField({
    super.key,
    this.horizontalPadding,
    this.verticalPadding,
    required this.hintText,
    this.suffixIcon,
    this.suffixIconSize,
    this.showSuffixIcon = false, // default false
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: widget.horizontalPadding ?? 0,
        vertical: widget.verticalPadding ?? 0,
      ),
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        cursorColor: Colors.white,
        cursorWidth: 1.2,
        obscureText: widget.showSuffixIcon ? isVisible : false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: widget.showSuffixIcon
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: isVisible
                      ? const Icon(Icons.visibility_off_outlined)
                      : const Icon(Icons.visibility_outlined),
                )
              : null,

          suffixIconColor: AppColor.secondaryTextColor,
          hintStyle: const TextStyle(
            color: Color(0xFFB3B3B3),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 12,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
        ),
      ),
    );
  }
}
