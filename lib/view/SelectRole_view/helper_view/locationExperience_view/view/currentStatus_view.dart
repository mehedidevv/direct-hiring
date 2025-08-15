import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/locationExperience_view/view/transferConsentStatus_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/question_view/view/spokenLanguage_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../res/appColors/App_Colors.dart';
import '../../../../../res/appImages/App_images.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../../../../../res/customStyle/custom_size.dart';
import '../../question_view/widget/customSelectableContainer_widget.dart';

class CurrentStatusView extends StatefulWidget {
  CurrentStatusView({super.key});

  @override
  State<CurrentStatusView> createState() => _CurrentStatusViewState();
}

class _CurrentStatusViewState extends State<CurrentStatusView> {
  String selectedLanguage = 'Filipino';

  final List<String> languages = [
    'Transfer',
    'Ex-Singapore ',
    'Ex-Abroad ',
    'Fresh ',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Current Status',
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


              //Logo
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0F2E9), // Light green background
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
                        child: Image.asset(
                          AppImages.callenderIcon,
                          fit: BoxFit.cover,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),




              CustomText(
                title: 'What\'s your current status?\n (Choose only 1 option)*',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              heightBox10,

              /// List of Nationalities
              ListView.builder(
                itemCount: languages.length,
                shrinkWrap: true, // important
                physics: NeverScrollableScrollPhysics(), // disable nested scroll
                itemBuilder: (context, index) {
                  final lang = languages[index];
                  return CustomSelectableContainer(
                    text: lang,
                    isSelected: selectedLanguage == lang,
                    onTap: () {
                      setState(() {
                        selectedLanguage = lang;
                      });
                    },
                  );
                },
              ),


              // /// Others Label
              // CustomText(
              //   title: 'Others',
              //   fontSize: 16,
              //   fontWeight: FontWeight.w500,
              //   color: AppColors.mainTextColor,
              // ),
              //
              // heightBox10,
              // RoundTextField(
              //   height: 100,
              //   hint: 'Enter Text here',
              //   borderWidth: 0.5,
              //   focusBorderWidth: 1,
              //   maxLine: 5,
              //   vertical_padding: 10,
              //   borderRadius: 20,
              //   focusBorderRadius: 20,
              // ),
              heightBox50,

              /// Next Button
              CustomButtonWithArrow(
                title: 'Next',
                onTap: () {
                  // Handle next
                    Get.to(TransferConsentStatusView());
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
