import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/res/commonWidget/customProgressBar_widget.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/personalInformation_view/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../res/appColors/App_Colors.dart';
import '../../../../res/commonWidget/customOtp_widget.dart';

class OtpVerificationView extends StatelessWidget {
  const OtpVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Verify Account',
        leadingIcon: Icons.arrow_back_rounded,
        onLeadingTap: () => Navigator.of(context).pop(),
      ),
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            heightBox20,
            CustomProgressBar(
              value: 0.5,
            ),

            heightBox100,
            //Logo
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.phoneVerification),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            heightBox100,

            CustomText(
              title: 'Please enter the 6 digit code that was sent to +65 123456 ',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.mainTextColor,
            ),

            heightBox10,
            CustomOtpWidget(
              numberOfFields: 6,
              borderColor: Colors.grey,
              onCodeChanged: (code) {
              },
            ),


            Spacer(),

            CustomButtonWithArrow(title: 'Confirm', onTap: (){
              Get.to(WelcomeView());
            },),


            heightBox50,



          ],
        ),
      ),
    );
  }
}