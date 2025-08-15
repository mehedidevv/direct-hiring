import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/res/commonWidget/customCircleCheckBox_widget.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/locationExperience_view/view/locationExperience_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../res/appColors/App_Colors.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../../../../../res/customStyle/custom_size.dart';
import '../widget/customSelectableContainer_widget.dart';

class QuestionnaireView extends StatefulWidget {
  QuestionnaireView({super.key});

  @override
  State<QuestionnaireView> createState() => _famillyMemberslViewState();
}

class _famillyMemberslViewState extends State<QuestionnaireView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Questionnaire',
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
                    child: const Center(
                      child: Icon(
                        Icons.question_mark,
                        size: 90,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),



              heightBox14,

              CustomText(
                title: 'Answer all the questions below: \n(Choose only 1 option)*',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),


              heightBox20,
              CustomText(
                title: 'Do you have any allergies?',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.mainTextColor,
              ),

              heightBox10,

              Row(
                children: [
                  CustomCircleCheckBoxWidget(
                    text: "Yes",
                    initialValue: true,
                    onChanged: (value) {
                      print("Checked? $value");
                    },
                  ),

                  widthBox50,

                  CustomCircleCheckBoxWidget(
                    text: "No",
                    initialValue: false,
                    onChanged: (value) {
                      print("Checked? $value");
                    },
                  ),

                ],
              ),


              heightBox20,
              CustomText(
                title: 'Can You Handle Pork?',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.mainTextColor,
              ),

              heightBox10,

              Row(
                children: [
                  CustomCircleCheckBoxWidget(
                    text: "Yes",
                    initialValue: true,
                    onChanged: (value) {
                      print("Checked? $value");
                    },
                  ),

                  widthBox50,

                  CustomCircleCheckBoxWidget(
                    text: "No",
                    initialValue: false,
                    onChanged: (value) {
                      print("Checked? $value");
                    },
                  ),

                ],
              ),


              heightBox20,
              CustomText(
                title: 'Are you willing to share room with a family member?',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.mainTextColor,
              ),

              heightBox10,

              Row(
                children: [
                  CustomCircleCheckBoxWidget(
                    text: "Yes",
                    initialValue: true,
                    onChanged: (value) {
                      print("Checked? $value");
                    },
                  ),

                  widthBox50,

                  CustomCircleCheckBoxWidget(
                    text: "No",
                    initialValue: false,
                    onChanged: (value) {
                      print("Checked? $value");
                    },
                  ),

                ],
              ),




              heightBox20,
              CustomText(
                title: 'Are you able to work with another helper?',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.mainTextColor,
              ),

              heightBox10,

              Row(
                children: [
                  CustomCircleCheckBoxWidget(
                    text: "Yes",
                    initialValue: true,
                    onChanged: (value) {
                      print("Checked? $value");
                    },
                  ),

                  widthBox50,

                  CustomCircleCheckBoxWidget(
                    text: "No",
                    initialValue: false,
                    onChanged: (value) {
                      print("Checked? $value");
                    },
                  ),

                ],
              ),



              heightBox20,
              CustomText(
                title: 'Do you have any tattoos?',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.mainTextColor,
              ),

              heightBox10,

              Row(
                children: [
                  CustomCircleCheckBoxWidget(
                    text: "Yes",
                    initialValue: true,
                    onChanged: (value) {
                      print("Checked? $value");
                    },
                  ),

                  widthBox50,

                  CustomCircleCheckBoxWidget(
                    text: "No",
                    initialValue: false,
                    onChanged: (value) {
                      print("Checked? $value");
                    },
                  ),

                ],
              ),


              heightBox20,

              /// Next Button
              CustomButtonWithArrow(
                title: 'Next',
                onTap: () {
                  // Handle next
                  Get.to(() => LocationExperienceView());
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
