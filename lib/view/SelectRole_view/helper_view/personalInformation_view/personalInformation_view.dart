import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../res/commonWidget/customText.dart';
import 'namePhone_view.dart';
import '../widget/stepProgressIndicator_widget.dart';

class PersonalInformationView extends StatelessWidget {
  const PersonalInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFB0DEBD), // Light green
              Color(0xFFFFFFFF), // White
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100), // space from top
              CustomText(
                title: 'Your Personal Information',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              Spacer(), // pushes image to vertical center
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.personalInformation),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Spacer(),

              StepProgressIndicator(currentStep: 1),

              heightBox50,

              CustomButtonWithArrow(title: 'Next', onTap: ()=> Get.to(() => NamePhoneView()),),

              heightBox50,

            ],
          ),
        ),
      ),
    );
  }
}
