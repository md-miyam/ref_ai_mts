import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';

class AiServicesCard extends StatelessWidget {
  const AiServicesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 220,
      height: 225,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF002718),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 24,
          top: 24,
          bottom: 24,
        ),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profil_pic.png'),
                ),
                SizedBox(width: 6),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back',
                      style: TextStyle(color: AppColor.myWhite, fontSize: 10),
                    ),
                    Text(
                      'Sarah Johnson',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your total eligible \nrefunds',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(height: 12),
                    Text(
                      '\$182',
                      style: TextStyle(
                        color: AppColor.myGreen,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/gemini.png',
                          height: 24,
                          width: 24,
                        ),
                        SizedBox(width: 6),
                        Text(
                          'live AI estimate',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 115,
                    width: 1,
                    color: AppColor.myGreen,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Refunds found this \nmonth',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(height: 12),
                    Text(
                      '\$487.25',
                      style: TextStyle(
                        color: AppColor.myGreen,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/gemini.png',
                          height: 24,
                          width: 24,
                        ),
                        SizedBox(width: 6),
                        Text(
                          'live AI estimate',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
