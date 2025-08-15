import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../res/appImages/App_images.dart';
import '../../../../../res/commonWidget/customText.dart';

import 'chatBot_view.dart';

class SubmitrequirementView extends StatelessWidget {
  const SubmitrequirementView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                title: 'Your account is ready! Submit requirements to start exploring on our platform.!',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0XFF767676),
                textAlign: TextAlign.center,
              ),



              Spacer(),
              CustomButton(
                  title: 'Submit Requirements',
                  onTap: (){
                    //TODO On Tab
                    Get.to(ChatbotView());
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
