import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';
import 'package:ref_ai/views/HomeScreen/widget/aI_services_card.dart';
import 'package:ref_ai/views/HomeScreen/widget/custom_quick_actions_grid_view.dart';
import 'package:ref_ai/views/HomeScreen/widget/home_custom_text.dart';
import 'package:ref_ai/widget/custom_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,

      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AiServicesCard(),
                  CustomButton(
                    childText: 'Track your Claim refunds',
                    borderRadius: 151,
                    margin: 32,
                  ),
                  HomeCustomText(text: 'Quick Actions'),

                  CustomQuickActionsGridView(

                  ),

                  AiServicesCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

