import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/locationExperience_view/view/currentStatus_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/question_view/view/spokenLanguage_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../res/appColors/App_Colors.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../../../../../res/customStyle/custom_size.dart';
import '../../question_view/widget/customSelectableContainer_widget.dart';

class CurrentLocationView extends StatefulWidget {
  CurrentLocationView({super.key});

  @override
  State<CurrentLocationView> createState() => _CurrentLocationViewState();
}

class _CurrentLocationViewState extends State<CurrentLocationView> {
  String selectedOption = 'Yes'; // Default selected option

  final List<String> options = [
    'Yes',
    'No, I\'m currently in another country',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Current Location',
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
              heightBox30,

              // Logo
              Center(
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
                  child: const Center(
                    child: Icon(
                      Icons.location_on,
                      size: 90,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),

              heightBox20,
              CustomText(
                title: 'Are you in Singapore now?\n(Choose only 1 option)*',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              heightBox10,

              /// Options list
              ListView.builder(
                itemCount: options.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final option = options[index];
                  return CustomSelectableContainer(
                    text: option,
                    isSelected: selectedOption == option,
                    onTap: () {
                      setState(() {
                        selectedOption = option;
                      });
                    },
                  );
                },
              ),

              // Conditionally show text field
              if (selectedOption == 'No, I\'m currently in another country') ...[
                heightBox20,
                CustomText(
                  title: 'Select your current location?',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.mainTextColor,
                ),
                heightBox10,
                RoundTextField(
                  height: 100,
                  hint: 'Enter Text here',
                  borderWidth: 0.5,
                  focusBorderWidth: 1,
                  maxLine: 5,
                  vertical_padding: 10,
                  borderRadius: 20,
                  focusBorderRadius: 20,
                ),
              ],

              heightBox50,

              /// Next Button
              CustomButtonWithArrow(
                title: 'Next',
                onTap: () {
                  Get.to(CurrentStatusView());
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

