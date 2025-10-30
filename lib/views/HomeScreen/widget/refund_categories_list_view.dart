import 'package:flutter/material.dart';
import 'package:ref_ai/widget/custom_text.dart';

class RefundCategoriesListView extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const RefundCategoriesListView({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: 128,
        // margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xFF1a1a1a),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xFF484848)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    // fit: BoxFit.cover
                  ),
                ),
              ),

              SizedBox(height: 6),
              CustomText(text: title, fontSize: 14),
              CustomText(
                text: subTitle,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
