import 'package:flutter/material.dart';
import 'package:ref_ai/utils/app_color.dart';
import 'package:ref_ai/views/HomeScreen/widget/opportunities_list_view.dart';
import 'package:ref_ai/widget/custom_button.dart';
import 'package:ref_ai/widget/custom_text.dart';
import 'package:ref_ai/widget/custom_text_field.dart';

class MoneyRecoveryResultsScreen extends StatelessWidget {
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
  ];
   MoneyRecoveryResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 32 ),
            child: Column(
              children: [
                CustomText(text: 'Your Money Recovery Results'),
                SizedBox(
                  height: 10,
                ),
                CustomText(text: "We found money you're owed. Tap to claim with confidence.",color: Color(0xFF999999),fontSize: 14,fontWeight: FontWeight.w400,),
                SizedBox(
                  height: 28,
                ),
                // Owed card
                Container(
                  padding: EdgeInsets.symmetric(vertical: 26,horizontal: 0),
                  height: 239,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF007449),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      CustomText(text: "You're Owed",textAlign: TextAlign.center,),
                      CustomText(text: '\$2,847',fontSize: 38,textAlign: TextAlign.center,),
                      CustomText(text: 'From 8 verified opportunities',fontSize: 18,fontWeight: FontWeight.w400,textAlign: TextAlign.center,),
                      SizedBox(
                        height: 18,
                      ),
                      CustomButton(childText: 'Claims All',onTap: (){},width: 196,),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                CustomTextField(hintText: 'Search your claim',suffixIcon: Icons.search,showSuffixIcon: true,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,),
                  child: CustomButton(childText: 'Track All Claims',),
                ),
          
                // Refund Categories listview
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
          
          
          
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
