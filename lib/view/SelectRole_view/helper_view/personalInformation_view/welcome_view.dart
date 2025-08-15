import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/personalInformation_view/welomeSplash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../res/appImages/App_images.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../question_view/view/dateOfBirth_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(title: 'Welcome',
          leadingIcon: Icons.arrow_back,
          onLeadingTap: () => Navigator.of(context).pop(),),
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),

                  //Row For Logo and Text
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


                  SizedBox(
                    height: 100,
                  ),

                  //Images For Success
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset(AppImages.requirementSuccess),
                  ),


                  SizedBox(
                    height: 20,
                  ),


                  CustomText(
                    title: 'Congratulations!',
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF33A954),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  CustomText(
                    title: 'Your number has been verified! Create your profile to start exploring on our platform',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF767676),
                    textAlign: TextAlign.center,
                  ),



                  Spacer(),
                  CustomButtonWithArrow(
                      title: 'Create My Profile',
                      onTap: (){
                        //TODO On Tab
                        Get.to(DateOfBirthView());
                      }
                  ),

                  heightBox50,



                ],
              ),
            )),
      ),
    );
  }
}
