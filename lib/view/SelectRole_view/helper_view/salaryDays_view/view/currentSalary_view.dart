import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/homeDashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/appImages/App_images.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/customStyle/custom_size.dart';
import '../../locationExperience_view/view/takingCareOf_view.dart';
import '../widget/customSelectableCheckBox_widget.dart';

class CurrentSalaryView extends StatefulWidget {
  CurrentSalaryView({super.key});

  @override
  State<CurrentSalaryView> createState() => _CurrentSalaryViewState();
}

class _CurrentSalaryViewState extends State<CurrentSalaryView> {
  final List<String> dayOffOptions = [
    '1 Day Off',
    '2 Days Off',
    '3 Days Off',
    '4 Days Off',
    '4 Days Off + Public Holidays'
  ];
  int selectedIndex = -1; // Initially none selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Current Salary',
        leadingIcon: Icons.arrow_back,
        onLeadingTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox10,

              /// Logo with shadow
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0F2E9),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 10,
                          spreadRadius: 2,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset(AppImages.emailBox),
                      ),
                    ),
                  ),
                ),
              ),

              CustomText(
                title: 'What is your current salary?',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),

              heightBox10,

              /// Salary Box
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFE0F2E9),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.primaryColor,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      CustomText(
                        title: 'SGD',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primaryColor,
                      ),
                      widthBox14,
                      SizedBox(
                        height: 40,
                        width: 100,
                        child: Center(
                          child: RoundTextField(
                            controller: TextEditingController(),
                            hint: '30000',
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              heightBox20,

              /// Day off question
              CustomText(
                title: 'How many day(s) off do you currently have? \n(choose only 1 option)*',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),

              heightBox14,

              /// Dynamically generated day off options
              Column(
                children: List.generate(dayOffOptions.length, (index) {
                  return CustomSelectableBox(
                    text: dayOffOptions[index],
                    isSelected: selectedIndex == index,
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  );
                }),
              ),

              heightBox50,

              /// Next Button
              CustomButtonWithArrow(
                title: 'Next',
                onTap: () {
                  // Handle next
                  Get.to(HelperDashboardView());
                },
              ),

              heightBox50,
            ],
          ),
        ),
      ),
    );
  }
}
