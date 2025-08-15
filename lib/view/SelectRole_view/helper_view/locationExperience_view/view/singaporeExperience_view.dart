import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/locationExperience_view/view/takingCareOf_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import '../../../../../res/appColors/App_Colors.dart';
import '../../../../../res/appImages/App_images.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../../../../../res/customStyle/custom_size.dart';
import '../../question_view/widget/customSelectableContainer_widget.dart';

class SingaporeExperienceView extends StatefulWidget {
  SingaporeExperienceView({super.key});

  @override
  State<SingaporeExperienceView> createState() => _SingaporeExperienceViewState();
}

class _SingaporeExperienceViewState extends State<SingaporeExperienceView> {
  String selectedStatus = 'No'; // default

  final List<String> statusList = [
    'Yes',
    'No',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Availability and Experience',
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

              heightBox10,
              CustomText(
                title: 'When will you be ready to start work?*',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              heightBox10,
              RoundTextField(
                hint: '12-12-2025',
                borderWidth: 0.5,
                focusBorderWidth: 1,
                borderRadius: 10,
                focusBorderRadius: 10,
                prefixIcon: Icon(Icons.calendar_month, color: Colors.grey, size: 20),
              ),

              heightBox10,
              CustomText(
                title: 'Have you worked as a Helper in Singapore before?*',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),

              /// Status selection
              ListView.builder(
                itemCount: statusList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final option = statusList[index];
                  return CustomSelectableContainer(
                    text: option,
                    isSelected: selectedStatus == option,
                    onTap: () {
                      setState(() {
                        selectedStatus = option;
                      });
                    },
                  );
                },
              ),

              /// Conditionally show text field only if Yes
              if (selectedStatus == 'Yes') ...[
                heightBox20,
                CustomText(
                  title: 'Do indicate the date you worked in Singapore '
                      'and what was your job scope for each employer that you worked with in Singapore.*',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.mainTextColor,
                ),
                heightBox10,
                RoundTextField(
                  height: 150,
                  hint: 'eg. 1st employer - Jan 2010 to Dec 2012. Took \n'
                      'care 1 y/o child, cleaning and cooking \n'
                      '2nd employer - Dec 2012 to Dec 2014, Took care \n'
                      'of grandma, cooking and marketing',
                  borderWidth: 0.5,
                  focusBorderWidth: 1,
                  maxLine: 10,
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
                  Get.to(TakingCareOfView());
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

