import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/res/commonWidget/customProgressBar_widget.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/countries.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../res/appColors/App_Colors.dart';
import 'otpVerify_view.dart';

class PhoneVerificationView extends StatelessWidget {
  const PhoneVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Verify Your Phone Number',
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
          
              heightBox20,
              CustomProgressBar(
                  value: 0.3,
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
                title: 'Please enter your Singapore-based phone number.',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
          
              heightBox10,
          
              //Phone Number

              IntlPhoneField(
                decoration: InputDecoration(
                  hintStyle: GoogleFonts.outfit(fontSize: 12),
                  fillColor: const Color(0xFFE4E4E4),
                  filled: true,
                  labelStyle: GoogleFonts.urbanist(fontSize: 13),
                  hintText: "Phone Number",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.5,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 1.0,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 1.0,
                    ),
                  ),
                ),
                initialCountryCode: 'SG',
                countries: const [
                  Country(
                    maxLength: 8,
                    minLength: 8,
                    nameTranslations: {'en': 'Singapore'},
                    name: 'Singapore',
                    code: 'SG',
                    dialCode: '65',
                    flag: '🇸🇬',
                  ),
                ],
                showDropdownIcon: false,
                disableLengthCheck: false,
                validator: (phone) {
                  if (phone == null || phone.number.isEmpty) {
                    return 'Phone number is required';
                  }
                  if (phone.number.length != 8) {
                    return 'Phone number must be 8 digits';
                  }
                  return null;
                },
                onChanged: (phone) {
                  debugPrint("Full Number: ${phone.completeNumber}");
                  // Add state management or further processing here
                },
              ),

              heightBox14,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Column(),
                  
                  CustomText(
                      title: 'I do not have a Singapore-based number',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainTextColor,
                  )
                ],
              ),

              heightBox50,

              CustomButtonWithArrow(title: 'Verify Number', onTap: () {
                Get.to(() => OtpVerificationView());
              },),
          
          
              heightBox50,
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}