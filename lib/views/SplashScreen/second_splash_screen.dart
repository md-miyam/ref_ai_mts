import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';
import 'package:ref_ai/views/SplashScreen/widget/custom_rich_text.dart';
import 'package:ref_ai/views/SplashScreen/widget/my_splash_button.dart';
import 'package:ref_ai/views/SplashScreen/widget/splash_container.dart';
import 'package:ref_ai/widget/my_custom_text.dart';

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
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 293,
                width: 293,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/second_splash.png'),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MyCustomText(
                text: "Automated & Effortless Recovery",
                overflow: TextOverflow.fade,
                fontSize: 32,
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 12),

            MyCustomText(
              text: 'We make finding your money simple. Here’s how:',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

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
                    padding: const EdgeInsets.symmetric(vertical: 8),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SplashContainer(isBorder: true),
                SplashContainer(),
                SplashContainer(isBorder: true),
              ],
            ),

            Spacer(),

            MySplashButton(
              buttonChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward, color: AppColor.myWhite),
              ),
              isBack: true,
            ),

            // MySplashButton(buttonChild: Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 52.5),
            //   child: Text('Get started',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: AppColor.myWhite),),
            // ), isBack: true,),
          ],
        ),
      ),
    );
  }
}
