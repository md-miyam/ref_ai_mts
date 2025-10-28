import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ref_ai/utils/app_color.dart';
import 'package:ref_ai/views/SplashScreen/second_splash_screen.dart';
import 'package:ref_ai/views/SplashScreen/widget/my_splash_button.dart';
import 'package:ref_ai/views/SplashScreen/widget/splash_container.dart';
import 'package:ref_ai/widget/my_custom_text.dart';

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
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 293,
                width: 440,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/first_splash.png'),
                  ),
                ),
              ),
            ),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCustomText(text: "Welcome to ", fontSize: 32),
                MyCustomText(
                  text: "Kikbak",
                  fontSize: 32,
                  color: AppColor.secondaryTextColor,
                ),
              ],
            ),

            SizedBox(
              height: 12,
            ),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 43),
              child: MyCustomText(
                text:
                    'Millions in unclaimed funds, hidden refunds, and bank overcharges go unnoticed every year. Kikbak is your personal AI refund engine that automatically finds and claims this money for you.',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                textAlign: TextAlign.center,
                overflow: TextOverflow.fade,
              ),
            ),
        
            SizedBox(height: 24),
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SplashContainer(),
                SplashContainer(isBorder: true),
                SplashContainer(isBorder: true),
              ],
            ),
        
            Spacer(),
        
            MySplashButton(
              buttonChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward, color: AppColor.myWhite),
              ),
              onTap: (){
              Get.to(SecondSplashScreen(),transition: Transition.cupertinoDialog,  );
              },
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
