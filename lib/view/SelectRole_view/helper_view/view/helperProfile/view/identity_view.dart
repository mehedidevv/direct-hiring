import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:flutter/material.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/appImages/App_images.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/customStyle/custom_size.dart';


class IdentityView extends StatelessWidget {
  const IdentityView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(
          title: 'Identity',
        leadingIcon: Icons.arrow_back_rounded,
        onLeadingTap: () => Navigator.pop(context)
      ),
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
              
                        /// Profile Image
                        Center(
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    CircleAvatar(
                                      radius: width * 0.15,
                                      backgroundImage: AssetImage(
                                          AppImages.profileOne),
              
                                    ),
                                    Positioned(
                                      bottom: 4,
                                      right: -1,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: CircleAvatar(
                                            radius: width * 0.03,
                                            backgroundColor: Color(0XFF003CFF),
                                            child: Icon(
                                              Icons.check,
                                              size: width * 0.04,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                CustomText(
                                  title: 'Emma Grate',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.mainTextColor,
                                ),
                              ],
                            ),
                          ),
                        ),
              
                        heightBox20,
              
                        /// Header
                        CustomText(
                          title: 'Edit your Information',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.mainTextColor,
                        ),
              
                        heightBox14,
              
                        CustomText(
                          title: 'Full Name',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.mainTextColor,
                        ),
                        heightBox10,
                        RoundTextField(
                            hint: 'Emma Grate',
                           focusBorderWidth: 1,
                        ),
              
              
                        heightBox14,
              
                        CustomText(
                          title: 'Bio',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.mainTextColor,
                        ),
                        heightBox10,
                        RoundTextField(
                          hint: 'Lorem ipsum dolor sit amet ...',
                          focusBorderWidth: 1,
                        ),
              
                        heightBox14,
              
                        CustomText(
                          title: 'Availability Date',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.mainTextColor,
                        ),
                        heightBox10,
                        RoundTextField(
                          hint: '31 December 2025',
                          focusBorderWidth: 1,
                        ),
              
                        heightBox14,
              
                        CustomText(
                          title: 'Nationality',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.mainTextColor,
                        ),
                        heightBox10,
                        RoundTextField(
                          hint: 'Filipino',
                          focusBorderWidth: 1,
                        ),
              
              
                        heightBox14,
              
                        CustomText(
                          title: 'Place of Birth',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.mainTextColor,
                        ),
                        heightBox10,
                        RoundTextField(
                          hint: 'Manila',
                          focusBorderWidth: 1,
                        ),


                        heightBox14,

                        CustomText(
                          title: 'Date of Birth',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: AppColors.mainTextColor,
                        ),
                        heightBox10,
                        RoundTextField(
                          hint: '12-12-2000',
                          focusBorderWidth: 1,
                        ),

                        heightBox14,

                        CustomButton(title: 'Publist', onTap: (){}),

                        heightBox14,
              
                      ],
              ),
            ),
          )),
    );
  }
}
