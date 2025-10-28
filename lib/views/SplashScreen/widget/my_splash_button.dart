import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ref_ai/utils/app_color.dart';

class MySplashButton extends StatefulWidget {
  final bool isBack;
  final Widget buttonChild;
  void Function()? onTap;

  MySplashButton({super.key, this.isBack = false, required this.buttonChild,this.onTap});

  @override
  State<MySplashButton> createState() => _MySplashButtonState();
}

class _MySplashButtonState extends State<MySplashButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 62),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.isBack
              ? InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back, color: AppColor.myWhite),
                      SizedBox(width: 8),
                      Text(
                        'Back',
                        style: TextStyle(
                          color: AppColor.primaryTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox(),

          Container(
            height: 40,
            // width: 40,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              color: AppColor.myGreen,
              borderRadius: BorderRadius.circular(151)
            ),
            child: InkWell(
              onTap: widget.onTap,
              child: Center(
                child: widget.buttonChild,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
