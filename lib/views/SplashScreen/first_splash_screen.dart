import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ref_ai/utils/app_color.dart';
import 'package:ref_ai/views/SplashScreen/second_splash_screen.dart';
import 'package:ref_ai/views/SplashScreen/widget/page_indicator.dart';
import 'package:ref_ai/widget/custom_text.dart';
import 'package:ref_ai/widget/dual_button.dart';

class FirstSplashScreen extends StatefulWidget {
  const FirstSplashScreen({super.key});

  @override
  State<FirstSplashScreen> createState() => _FirstSplashScreenState();
}

class _FirstSplashScreenState extends State<FirstSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Image
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 12),
              child: Center(
                child: Container(
                  // height: 293,
                  // width: 440,
                  height: MediaQuery.of(context).size.height * .30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/first_splash.png'),
                    ),
                  ),
                ),
              ),
            ),

            // Welcome text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: "Welcome to ", fontSize: 32),
                CustomText(
                  text: "Kikbak",
                  fontSize: 32,
                  color: AppColor.secondaryTextColor,
                ),
              ],
            ),

            SizedBox(height: 12),

            // Millions text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44),
              child: CustomText(
                text:
                    'Millions in unclaimed funds, hidden refunds, and bank overcharges go unnoticed every year. Kikbak is your personal AI refund engine that automatically finds and claims this money for you.',
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
                PageIndicator(),
                PageIndicator(isBorder: true),
                PageIndicator(isBorder: true),
              ],
            ),

            Spacer(),
            // Button
            DualButton(
              buttonChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward, color: AppColor.myWhite),
              ),
              onTap: () {
                Get.to(
                  SecondSplashScreen(),
                  transition: Transition.rightToLeftWithFade,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
