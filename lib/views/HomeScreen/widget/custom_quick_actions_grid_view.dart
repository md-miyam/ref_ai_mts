import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';
import 'package:ref_ai/widget/my_custom_text.dart';

class CustomQuickActionsGridView extends StatelessWidget {
  final String gridIconImage;
  final String gridFirstText;
  final String gridSecondText;

  const CustomQuickActionsGridView({
    super.key,
    required this.gridIconImage,
    required this.gridFirstText,
    required this.gridSecondText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      // width: MediaQuery.of(context).size.width*.43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.customGridViewBg,
        border: Border.all(color: AppColor.customGridViewBorder, width: 1),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.5,horizontal: 11.5),
        child: Column(
          children: [
            Container(
              height: 48,
              width: 48,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.myGreen,
              ),
              child: Center(
                child: Image.asset(gridIconImage, color: Colors.white),
              ),
            ),
            SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MyCustomText(text: gridFirstText, fontSize: 18),
                MyCustomText(
                  text: gridSecondText,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
