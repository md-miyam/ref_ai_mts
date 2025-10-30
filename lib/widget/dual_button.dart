import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ref_ai/utils/app_color.dart';

class DualButton extends StatelessWidget {
  final bool isBackButton;
  final double? buttonHeight;
  final Widget buttonChild;
  final void Function()? onTap;

  const DualButton({
    super.key,
    this.isBackButton = false,
    required this.buttonChild,
    this.onTap,
    this.buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 62),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isBackButton
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(
                    8,
                  ), // ripple shape control
                  child: Material(
                    color: Colors.transparent, // no background
                    child: InkWell(
                      onTap: () => Get.back(),
                      splashColor: Colors.white38,
                      highlightColor: Colors.white10,
                      child: Padding(
                        padding: EdgeInsets.only(right: 6, top: 4, bottom: 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.min, // shrink to content
                          children: [
                            Icon(
                              Icons.arrow_back,
                              color: AppColor.myWhite,
                              size: 22,
                            ),
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
                      ),
                    ),
                  ),
                )
              : SizedBox(),

          ClipRRect(
            borderRadius: BorderRadius.circular(151),
            child: Material(
              color: AppColor.myGreen, // ripple visible with background
              child: InkWell(
                onTap: onTap,
                splashColor: Colors.white12,
                highlightColor: Colors.white10,
                child: SizedBox(
                  height: buttonHeight ?? 48,
                  child: Center(child: buttonChild),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
