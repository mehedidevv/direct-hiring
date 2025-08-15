import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/personalInformation_view/personalInformation_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/question_view/view/dateOfBirth_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../res/appColors/App_Colors.dart';
import '../../../../res/appImages/App_images.dart';
import '../../../../res/commonWidget/customText.dart';
import 'namePhone_view.dart';

class WelcomeSplashview extends StatelessWidget {
  const WelcomeSplashview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,),
            child: Column(
            //  mainAxisSize: MainAxisSize.min,
              children: [

                heightBox50,
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(AppImages.logo),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomText(
                      title: 'Direct Hiring',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF232323),
                    )
                  ],
                ),


                heightBox100,

                CustomText(
                  title: 'Welcome',
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),

                heightBox30,

                SizedBox(
                  height: 164,
                  width: 164,
                  child: Image.asset(AppImages.logo),
                ),
                const SizedBox(height: 50),
                CustomText(
                  title: 'Direct Hiring',
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 4,
                  color: Color(0XFF0B0B0B),
                ),

                const SizedBox(height: 30),
                CustomText(
                  title: 'Welcome to Direct Hiring \n'
                      'Let\'s find your next ideal job!',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.mainTextColor,
                ),

                Spacer(),
                CustomButtonWithArrow(title: 'Continue', onTap: (){
                  //Get.to(() => DateOfBirthView());
                  Get.to(() => PersonalInformationView());
                }),
                heightBox30,

              ],
            ),
          ),
        ),
      ),
    );
  }
}
