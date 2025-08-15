import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/personalInformation_view/phoneVerification_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../res/appColors/App_Colors.dart';

class NamePhoneView extends StatelessWidget {
  const NamePhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Your Personal Information',
        leadingIcon: Icons.arrow_back_rounded,
        onLeadingTap: () => Navigator.of(context).pop(),
      ),
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox100,
          
              //Logo
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
                    child: const Center(
                      child: Icon(
                        Icons.person,
                        size: 100,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              ),
          
          
              heightBox100,
              CustomText(
                  title: 'What is Your Full Name',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              heightBox10,
          
              RoundTextField(
                  hint: 'Enter Your Name'
              ),
          
              

              heightBox50,
              CustomButtonWithArrow(title: 'Next', onTap: (){
                Get.to(PhoneVerificationView());
              },),
          
          
              heightBox50,
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}