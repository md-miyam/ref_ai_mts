import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';
import 'package:ref_ai/views/HomeScreen/widget/home_custom_text.dart';

class CustomQuickActionsGridView extends StatelessWidget {
  const CustomQuickActionsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      height: 330,
      child: GridView.builder(
        itemCount: 4,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1, // Optional: width/height ratio
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFF002718),
                border: Border.all(color: Color(0xFF008855),width: 1)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.5),
              child: Column(
                children: [
                  // Container(
                  //   height: 48,
                  //   width: 48,
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //     color: AppColor.myGreen,
                  //     image: DecorationImage(
                  //       image: AssetImage('assets/images/connect_bank.png'),
                  //       fit: BoxFit.cover
                  //     ),
                  //   ),
                  // ),

                  // CircleAvatar(
                  //   radius: 24,
                  //   backgroundColor: AppColor.myGreen,
                  //   backgroundImage: AssetImage('assets/images/connect_bank.png'),
                  //   // child: Text('B'), // fallback if image fails
                  // ),

                  // CircleAvatar(
                  //   radius: 24,
                  //   backgroundColor: Colors.white,
                  //   backgroundImage: AssetImage('assets/images/connect_bank.png'),
                  //   onBackgroundImageError: (exception, stackTrace) {
                  //     print('Image load failed: $exception');
                  //   },
                  // ),

                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/connect_bank.png'),
                  ),




                  SizedBox(
                    height: 12,
                  ),
                  HomeCustomText(
                    text: 'Connect Bank',
                    fontSize: 18,
                  ),
                  HomeCustomText(
                    text: 'Link your accounts',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
