import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../res/appColors/App_Colors.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../../../../../res/customStyle/custom_size.dart';
import 'nationality_view.dart';

class  DateOfBirthView extends StatelessWidget {
  const  DateOfBirthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'Place and Date of Birth',
        leadingIcon: Icons.arrow_back,
        onLeadingTap: () {
          Navigator.pop(context);
        }
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              heightBox40,
          
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
                        Icons.location_on,
                        size: 90,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
          
          
              heightBox30,
              CustomText(
                title: 'Please indicate your place of birth.*',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              heightBox10,
          
              RoundTextField(
                  hint: 'E.g Ilo Ilo City, Philippines',
                 borderWidth: 0.50,
                focusBorderWidth: 1,
                fillColor: Color(0XFFE6F4EA),
              ),
          
          
          
              heightBox14,
              CustomText(
                title: 'What is the name of the airport near your hometown?*',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              heightBox10,
          
              RoundTextField(
                hint: 'Eg. Iloilo International Airport...',
                borderWidth: 0.50,
                focusBorderWidth: 1,
                fillColor: Color(0XFFE6F4EA),
              ),
          
          
              heightBox14,
              CustomText(
                title: 'Tell us your Date of Birth?*',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              heightBox10,
          
              RoundTextField(
                hint: '12-12-2024',
                borderWidth: 0.50,
                focusBorderWidth: 1,
                fillColor: Color(0XFFE6F4EA),
              ),
          
              heightBox30,
              CustomButtonWithArrow(title: 'Next', onTap: (){
                Get.to(() => NationalityView());
              }),
          
              heightBox50,
          
            ],
          ),
        ),
      ),
    );
  }
}
