import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';

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
      body: Column(
        children: [

          Center(
            child: Container(
              height: 293,
              width: 440,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/first_splash.png')),
              ),
            ),
          ),

          Row(
            
          )


        ],
      ),


    );
  }
}
