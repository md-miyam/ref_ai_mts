import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ref_ai/utils/app_color.dart';
import 'package:ref_ai/views/SplashScreen/third_splash_screen.dart';
import 'package:ref_ai/views/SplashScreen/widget/custom_rich_text.dart';
import 'package:ref_ai/views/SplashScreen/widget/page_indicator.dart';
import 'package:ref_ai/widget/custom_text.dart';
import 'package:ref_ai/widget/dual_button.dart';

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({super.key});

  @override
  State<SecondSplashScreen> createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
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
                  // width: 293,
                  height: MediaQuery.of(context).size.height * .30,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/second_splash.png'),
                    ),
                  ),
                ),
              ),
            ),
            // Automated text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomText(
                text: "Automated & Effortless Recovery",
                fontSize: 32,
                textAlign: TextAlign.center,
              ),
            ),

            // We make text
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 40),
              child: CustomText(
                text: 'We make finding your money simple. Here’s how:',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
              ),
            ),

            // RichText's
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomRichText(
                    firstText: 'Securely Connect: ',
                    secondText:
                        'Link your email and bank accounts in seconds using bank-level security.',
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: CustomRichText(
                      firstText: 'AI-Powered Scan: ',
                      secondText:
                          'Our engine scans for unclaimed property, class action lawsuits, junk fees, price drops, and more.',
                    ),
                  ),

                  CustomRichText(
                    firstText: 'One-Tap Claims: ',
                    secondText:
                        'We notify you of found money and help you file claims in just a few taps.',
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // PageIndicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PageIndicator(isBorder: true),
                PageIndicator(),
                PageIndicator(isBorder: true),
              ],
            ),

            Spacer(),

            // Button's
            DualButton(
              buttonHeight: 40,
              buttonChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward, color: AppColor.myWhite),
              ),
              isBackButton: true,
              onTap: () {
                Get.to(
                  ThirdSplashScreen(),
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
