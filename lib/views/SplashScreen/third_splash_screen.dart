import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ref_ai/utils/app_color.dart';
import 'package:ref_ai/views/BottomNev/bottom_nev.dart';
import 'package:ref_ai/views/SplashScreen/widget/page_indicator.dart';
import 'package:ref_ai/widget/custom_text.dart';
import 'package:ref_ai/widget/dual_button.dart';

class ThirdSplashScreen extends StatefulWidget {
  const ThirdSplashScreen({super.key});

  @override
  State<ThirdSplashScreen> createState() => _ThirdSplashScreenState();
}

class _ThirdSplashScreenState extends State<ThirdSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,

      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            // Image
            Center(
              child: Container(
                // height: 293,
                // width: 293,
                height: MediaQuery.of(context).size.height * .30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/third_splash.png'),
                  ),
                ),
              ),
            ),

            // Your Security text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomText(
                text: "Your Security is Our Priority",
                fontSize: 32,
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 12),

            // We use text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 43),
              child: CustomText(
                text:
                    'We use bank-level security and secure connections like Plaid and OAuth2 to protect your data. Your information is encrypted and is never sold or shared. Best of all, Kikbak is free to use. We only take a small percentage if we successfully recover money for you. No upfront fees, no hidden charges.',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 24),

            // PageIndicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageIndicator(isBorder: true),
                PageIndicator(isBorder: true),
                PageIndicator(),
              ],
            ),

            Spacer(),

            // Button's
            DualButton(
              buttonChild: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 52.5),
                child: Text(
                  'Get started',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.myWhite,
                  ),
                ),
              ),
              onTap: () {
                Get.offAll(
                  BottomNev(),
                  transition: Transition.cupertinoDialog,
                  duration: Duration(milliseconds: 2),
                );
              },
              isBackButton: true,
            ),
          ],
        ),
      ),
    );
  }
}
