import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/locationExperience_view/view/singaporeExperience_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../../../../res/appColors/App_Colors.dart';
import '../../../../../res/appImages/App_images.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../../../../../res/customStyle/custom_size.dart';
import '../../question_view/widget/customSelectableContainer_widget.dart';

class TransferConsentStatusView extends StatefulWidget {
  TransferConsentStatusView({super.key});

  @override
  State<TransferConsentStatusView> createState() => _TransferConsentStatusViewState();
}

class _TransferConsentStatusViewState extends State<TransferConsentStatusView> {
  String selectedStatus = 'Yes';
  String selectedStatus1 = 'Yes';
  String selectedStatus2 = 'Yes';

  final List<String> statusList = [
    'Yes',
    'No '
  ];

  final List<String> statusListTwo = [
    'Yes',
    'No '
  ];
  final List<String> statusListThree = [
    'Yes',
    'No '
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Transfer Consent Status',
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

              CustomText(
                title: 'Do you have your passport with you right now?*',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              heightBox10,

              /// List of Nationalities
              ListView.builder(
                itemCount: statusList.length,
                shrinkWrap: true, // important
                physics: NeverScrollableScrollPhysics(), // disable nested scroll
                itemBuilder: (context, index) {
                  final lang = statusList[index];
                  return CustomSelectableContainer(
                    text: lang,
                    isSelected: selectedStatus == lang,
                    onTap: () {
                      setState(() {
                        selectedStatus = lang;
                      });
                    },
                  );
                },
              ),

              CustomText(
                title: 'Do you have your release paper with you right now?*',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),

              /// List of Nationalities
              ListView.builder(
                itemCount: statusListTwo.length,
                shrinkWrap: true, // important
                physics: NeverScrollableScrollPhysics(), // disable nested scroll
                itemBuilder: (context, index) {
                  final lang = statusList[index];
                  return CustomSelectableContainer(
                    text: lang,
                    isSelected: selectedStatus1 == lang,
                    onTap: () {
                      setState(() {
                        selectedStatus1 = lang;
                      });
                    },
                  );
                },
              ),

              CustomText(
                title: 'Has your employer already signed your release paper?',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),

              /// List of Nationalities
              ListView.builder(
                itemCount: statusListThree.length,
                shrinkWrap: true, // important
                physics: NeverScrollableScrollPhysics(), // disable nested scroll
                itemBuilder: (context, index) {
                  final lang = statusList[index];
                  return CustomSelectableContainer(
                    text: lang,
                    isSelected: selectedStatus2 == lang,
                    onTap: () {
                      setState(() {
                        selectedStatus2 = lang;
                      });
                    },
                  );
                },
              ),

              /// Others Label
              CustomText(
                title: 'When is your confirmed release date?*',
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
              heightBox50,

              /// Next Button
              CustomButtonWithArrow(
                title: 'Next',
                onTap: () {
                  // Handle next
                    Get.to(SingaporeExperienceView());
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
