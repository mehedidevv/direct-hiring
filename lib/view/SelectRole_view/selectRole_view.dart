import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helper_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'employee_view/view/authentication_view/commitment_view.dart';

class SelectroleView extends StatelessWidget {
  const SelectroleView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 10,),

                Row(
                  children: [

                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset(AppImages.logo),
                    ),

                    SizedBox(width: 10,),

                    CustomText(
                        title: 'Direct Hiring',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF232323),
                    )

                  ],
                ),

                SizedBox(height: 30,),


                CustomText(
                  title: 'Select your role',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF545454),
                ),

                SizedBox(height: 20,),

                //Helper
                GestureDetector(
                  onTap: ()=> Get.to(HelperView()),
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.whiteColor,
                      border: Border.all(
                        color: Color(0XFFCACACA),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: CustomText(
                        title: 'I\'m an Helper',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF545454),
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                //Employer
                GestureDetector(
                  onTap: (){
                    //On Tab To Employer Container
                    Get.to(CommitmentView());
                  },
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0XFFE6F4EA),
                      border: Border.all(
                        color: Color(0XFF33A954),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: CustomText(
                        title: 'I\'m an Employer',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF33A954),
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                ),




                SizedBox(height: 100,),


                CustomText(
                  title: 'I confirm my role!',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF545454),
                ),

                CustomText(
                  title: 'This decision is final and cannot be changed later.',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF545454),
                ),



                SizedBox(height: 20,),

                //Employer
                Container(
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0XFFE6F4EA),
                    border: Border.all(
                      color: Color(0XFF33A954),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: CustomText(
                      title: 'I\'m an Employer',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF33A954),
                      letterSpacing: 0.2,
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                //Helper
                Container(
                  height: 56,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.whiteColor,
                    border: Border.all(
                      color: Color(0XFFCACACA),
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: CustomText(
                      title: 'Back',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF545454),
                      letterSpacing: 0.2,
                    ),
                  ),
                ),







              ],
            ),
          ),
        ),
      ),
    );
  }
}
