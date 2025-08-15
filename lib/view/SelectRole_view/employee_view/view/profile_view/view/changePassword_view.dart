import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/appImages/App_images.dart';
import '../../../../../../res/commonWidget/RoundTextField.dart';
import '../../../../../../res/commonWidget/customAppBar.dart';
import '../../../../../../res/commonWidget/customButton.dart';
import '../../../../../../res/commonWidget/customCheckBox_widget.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/customStyle/custom_size.dart';
import '../controller/signUp_controller.dart';


class ChangePassword extends StatelessWidget {
  ChangePassword({super.key});

  final SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Change Password",
        leadingIcon: Icons.arrow_back,
        onLeadingTap: () => Navigator.of(context).pop(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14,vertical: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                heightBox30,
                Center(
                  child: CustomText(
                      title: 'Create New Password',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF010101)
                  ),
                ),

                heightBox30,

                //Password
                CustomText(
                    title: 'Current Password',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF010101).withOpacity(0.6)
                ),

                heightBox10,

                Obx( () =>
                //Text Field For Password
                RoundTextField(
                  hint: '******',
                  fillColor: Color(0XFFF8F9FA),
                  borderColor: Color(0XFF6B6B6B),
                  borderWidth: 0.15,
                  prefixIcon: Icon(Icons.lock,size: 20,color: Color(0XFF475467),),
                  suffixIcon: IconButton(
                    icon: Icon(
                      color: Color(0XFF475467),
                      signUpController.isPasswordVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      signUpController.togglePasswordVisibility();
                    },
                  ),
                  obscureText: !signUpController .isPasswordVisible.value,
                ),),


                //Password
                CustomText(
                    title: 'New  Password',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF010101).withOpacity(0.6)
                ),

                heightBox10,

                Obx( () =>
                //Text Field For Password
                RoundTextField(
                  hint: '******',
                  fillColor: Color(0XFFF8F9FA),
                  borderColor: Color(0XFF6B6B6B),
                  borderWidth: 0.15,
                  prefixIcon: Icon(Icons.lock,size: 20,color: Color(0XFF475467),),
                  suffixIcon: IconButton(
                    icon: Icon(
                      color: Color(0XFF475467),
                      signUpController.isConfirmPasswordVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      signUpController.toggleConfirmPasswordVisibility();
                    },
                  ),
                  obscureText: !signUpController .isConfirmPasswordVisible.value,
                ),),


                //Password
                CustomText(
                    title: 'Confirm  Password',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF010101).withOpacity(0.6)
                ),

               heightBox10,

                Obx( () =>
                //Text Field For Password
                RoundTextField(
                  hint: '******',
                  fillColor: Color(0XFFF8F9FA),
                  borderColor: Color(0XFF6B6B6B),
                  borderWidth: 0.15,
                  prefixIcon: Icon(Icons.lock,size: 20,color: Color(0XFF475467),),
                  suffixIcon: IconButton(
                    icon: Icon(
                      color: Color(0XFF475467),
                      signUpController.isConfirmPasswordVisible.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      signUpController.toggleConfirmPasswordVisibility();
                    },
                  ),
                  obscureText: !signUpController .isConfirmPasswordVisible.value,
                ),),

                heightBox14,

                Row(
                  children: [

                    CustomCheckbox(
                      initialValue: false,
                      onChanged: (bool value) {
                        print("Checkbox is now: $value");
                      },
                    ),

                    widthBox20,

                    CustomText(
                      title: 'Remember me ',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF010101).withOpacity(0.6),

                    ),



                  ],
                ),

                heightBox20,


                CustomButton(title: 'Update Password', onTap: ()=>Navigator.pop(context)),

                heightBox20,





              ],
            ),
          ),
        ),
      ),
    );
  }
}
