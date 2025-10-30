import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ref_ai/utils/app_color.dart';
import 'package:ref_ai/views/HomeScreen/widget/ai_services_card.dart';
import 'package:ref_ai/views/HomeScreen/widget/custom_quick_actions_grid_view.dart';
import 'package:ref_ai/views/HomeScreen/widget/opportunities_list_view.dart';
import 'package:ref_ai/views/HomeScreen/widget/refund_categories_list_view.dart';
import 'package:ref_ai/views/MoneyRecoveryResultsScreen/money_recovery_results_screen.dart';
import 'package:ref_ai/widget/custom_button.dart';
import 'package:ref_ai/widget/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> gridItemsList = [
    {
      'icon': 'assets/images/connect_bank.png',
      'title': 'Connect Bank',
      'subTitle': 'Link your accounts',
    },
    {
      'icon': 'assets/images/upload_healthcare_bills.png',
      'title': 'Upload healthcare Bills',
      'subTitle': 'Find medical refunds',
    },
    {
      'icon': 'assets/images/check_auto_insurance.png',
      'title': 'Check Auto Insurance',
      'subTitle': 'Review coverage',
    },
    {
      'icon': 'assets/images/union.png',
      'title': 'Scan Email Recepts',
      'subTitle': 'Find medical refunds',
    },
  ];

  final List<Map<String, dynamic>> opportunitiesList = [
    {
      'title': 'Bank Overdraft Fees',
      'subTitle': 'Junk fees',
      'leadingIcon': Icons.watch_later_outlined,
      'trailing': {'text': '\$127.50', 'subText': 'Claimed'},
      'button': {'text': 'ELIGIBLE', 'color': AppColor.myGreen},
    },
    {
      'title': 'Uber class action settlement',
      'subTitle': 'Class action',
      'leadingIcon': Icons.watch_later_outlined,
      'trailing': {'text': '\$127.50', 'subText': 'View status'},
      'button': {'text': 'PROCESSING', 'color': Color(0xFFf59e0b)},
    },
    {
      'title': 'Healthcare Overpayment',
      'subTitle': 'Class action',
      'leadingIcon': Icons.watch_later_outlined,
      'trailing': {'text': '\$89.25', 'subText': 'Claimed'},
      'button': {'text': 'PAID', 'color': Color(0xFF666666)},
    },
    {
      'title': 'Healthcare Overpayment',
      'subTitle': 'Class action',
      'leadingIcon': Icons.watch_later_outlined,
      'trailing': {'text': '\$89.25', 'subText': 'Claimed'},
      'button': {'text': 'PAID', 'color': Color(0xFF666666)},
    },
  ];

  final List<Map<String, String>> refundCategoriesLis = [
    {
      'image': 'assets/images/insurance.png',
      'title': 'Auto Insurance',
      'subTitle': '3 Found',
    },
    {
      'image': 'assets/images/utilities.png',
      'title': 'Utilities',
      'subTitle': '2 Found',
    },
    {
      'image': 'assets/images/healthcare.png',
      'title': 'Healthcare',
      'subTitle': '4 Found',
    },
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // AiServicesCard
                AiServicesCard(),

                // Track your Claim refunds button
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32),
                  child: CustomButton(
                    childText: 'Track your Claim refunds',
                    onTap: () {
                      Get.to(
                        MoneyRecoveryResultsScreen(),
                        transition: Transition.cupertinoDialog,
                      );
                    },
                  ),
                ),

                // Quick Actions text
                CustomText(text: 'Quick Actions'),

                // Home GridView
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 32),
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: gridItemsList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 1, // Optional: width/height ratio
                        ),
                    itemBuilder: (context, index) {
                      final item = gridItemsList[index];
                      return CustomQuickActionsGridView(
                        gridIconImage: item['icon'].toString(),
                        gridFirstText: item['title'].toString(),
                        gridSecondText: item['subTitle'].toString(),
                      );
                    },
                  ),
                ),

                // New Opportunities Found text
                CustomText(text: 'New Opportunities Found'),

                // Home ListView
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 20),
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: opportunitiesList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final item = opportunitiesList[index];
                      return OpportunitiesListView(
                        title: item['title'],
                        subTitle: item['subTitle'],
                        leadingIcon: item['leadingIcon'],
                        trailingText: item['trailing']['text'],
                        trailingSubText: item['trailing']['subText'],
                        buttonText: item['button']['text'],
                        buttonColor:
                            item['button']['color'], // Uncomment if supported
                      );
                    },
                  ),
                ),

                // Refund Categories + See all text
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(text: 'Refund Categories'),
                    Row(
                      children: [
                        CustomText(
                          text: 'See all',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.secondaryTextColor,
                        ),
                        SizedBox(width: 6),
                      ],
                    ),
                  ],
                ),

                // Refund Categories listview
                Padding(
                  padding: const EdgeInsets.only(top: 12, bottom: 24),
                  child: SizedBox(
                    height: 121,
                    width: double.infinity,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: refundCategoriesLis.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final item = refundCategoriesLis[index];
                        return RefundCategoriesListView(
                          image: item['image'].toString(),
                          title: item['title'].toString(),
                          subTitle: item['subTitle'].toString(),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
