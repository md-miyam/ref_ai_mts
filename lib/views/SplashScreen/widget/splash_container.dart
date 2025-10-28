import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';

class SplashContainer extends StatelessWidget {
  final bool isBorder;
  const SplashContainer({super.key, this.isBorder = false});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(right: 6),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isBorder ?  Colors.transparent : AppColor.myGreen ,
        border: Border.all(
          color:  AppColor.myGreen,
          width: 1,
        )
      ),
    );
  }
}
