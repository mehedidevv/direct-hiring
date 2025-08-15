import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/question_view/view/educationLevel_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../res/appColors/App_Colors.dart';
import '../../../../../res/commonWidget/customCheckBox_widget.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../../../../../res/customStyle/custom_size.dart';
import '../widget/customSelectableContainer_widget.dart';

class SpokenLanguageView extends StatefulWidget {
  SpokenLanguageView({super.key});

  @override
  State<SpokenLanguageView> createState() => _SpokenLanguageViewState();
}

class _SpokenLanguageViewState extends State<SpokenLanguageView> {
  String selectedLanguage = 'Filipino';
  bool isOtherNationalityChecked = false;

  final List<String> languages = [
    'English',
    'Bahasa Indonesian',
    'Tagalog',
    'Burmese',
    'Chinese',
    'Malay',
    'Hokkien',
    'Hindi',
    'Cantonese'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Language',
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
                title: 'Please select all the language(s) you are fluent in. (You may select more than 1)*',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              heightBox14,

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

              /// Others Label
              heightBox20,
              Row(
                children: [
                  CustomText(
                    title: 'Are you Another Language?',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainTextColor,
                  ),
                  widthBox20,
                  CustomCheckbox(
                    initialValue: isOtherNationalityChecked,
                    onChanged: (bool value) {
                      setState(() {
                        isOtherNationalityChecked = value; // ✅ Update state
                      });
                    },
                  ),
                ],
              ),

              /// Conditionally show Others text field
              if (isOtherNationalityChecked) ...[
                heightBox20,
                CustomText(
                  title: 'Others',
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
                  // Handle next
                  Get.to(() => EducationLevelView());
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
