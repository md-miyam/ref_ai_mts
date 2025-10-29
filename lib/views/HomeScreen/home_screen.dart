import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';
import 'package:ref_ai/views/HomeScreen/widget/aI_services_card.dart';
import 'package:ref_ai/views/HomeScreen/widget/custom_quick_actions_grid_view.dart';
import 'package:ref_ai/widget/custom_button.dart';
import 'package:ref_ai/widget/custom_text_field.dart';
import 'package:ref_ai/widget/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> gridIconImageList = [
    'assets/images/connect_bank.png',
    'assets/images/upload_healthcare_bills.png',
    'assets/images/check_auto_insurance.png',
    'assets/images/union.png',
  ];
  List<String> gridFirstTextList = [
    'Connect Bank',
    'Upload healthcare Bills',
    'Check Auto Insurance',
    'Scan Email Recepts',
  ];
  List<String> gridSecondTextList = [
    'Link your accounts',
    'Find medical refunds',
    'Review coverage',
    'Find medical refunds',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,

      body: Container(
        margin: EdgeInsets.only(top: 25),
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
                  CustomText(text: 'Quick Actions'),

                  // my grid
                  GridView.builder(
                    itemCount: 4,
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
                      return CustomQuickActionsGridView(
                        gridIconImage: gridIconImageList[index],
                        gridFirstText: gridFirstTextList[index],
                        gridSecondText: gridSecondTextList[index],
                      );
                    },
                  ),

                  SizedBox(height: 32),

                  CustomText(text: 'New Opportunities Found'),

                  ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Container(
                          height: 120,
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF1A1A1A),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.schedule,
                                            color: Color(0xFF00c27a),
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            'Bank Overdraft Fees',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: AppColor.primaryTextColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        '\$127.50',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: AppColor.primaryTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 2),

                                  Row(
                                    children: [
                                      SizedBox(width: 30),
                                      Text(
                                        'Class action',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: AppColor.primaryTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 23,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 4,
                                      horizontal: 8,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF59E0B),
                                      borderRadius: BorderRadius.circular(39),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'PROCESSING',
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          color: AppColor.primaryTextColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'View status',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF00c27a),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(text: 'Refund Categories'),
                      CustomText(
                        text: 'See all',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.secondaryTextColor,
                      ),
                    ],
                  ),

                  // listview
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: SizedBox(
                      height: 121,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              width: 128,
                              // margin: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Color(0xFF1a1a1a),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Color(0xFF484848)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 48,
                                      width: 48,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/insurance.png',
                                          ),
                                          // fit: BoxFit.cover
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 6),
                                    CustomText(
                                      text: 'Auto Insurance',
                                      fontSize: 14,
                                    ),
                                    CustomText(
                                      text: '3 Found',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  CustomTextField(
                    hintText: 'Search your claim',
                    verticalPadding: 20,
                    suffixIcon: Icons.search,
                    showSuffixIcon: true,
                  ),
                  CustomTextField(
                    hintText: 'Text input',
                    suffixIcon: Icons.visibility_off_outlined,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
