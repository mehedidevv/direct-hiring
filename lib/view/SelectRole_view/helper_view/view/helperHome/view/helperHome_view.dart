import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperHome/view/helperDetails_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperHome/widget/alertDialog_widget.dart';
import 'package:direct_hiring/view/onBoarding_view/notification/notificationView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../res/appImages/App_images.dart';
import '../widget/singleHelper_widget.dart';
import '../widget/customProfile_widget.dart';
class HelperHomeView extends StatelessWidget {
  const HelperHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample dynamic profile list
    final List<Map<String, String>> profiles = [
      {'name': 'John Doe', 'image': AppImages.profileOne},
      {'name': 'Alice', 'image': AppImages.profileOne},
      {'name': 'Mark', 'image': AppImages.profileOne},
      {'name': 'Sophia', 'image': AppImages.profileOne},
      {'name': 'John Doe', 'image': AppImages.profileOne},
      {'name': 'Alice', 'image': AppImages.profileOne},
      {'name': 'Mark', 'image': AppImages.profileOne},
      {'name': 'Sophia', 'image': AppImages.profileOne},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                // Header Part For Profile And Notification
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(AppImages.profileOne),
                    ),
                    widthBox14,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: 'HELLO',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0XFF9E9E9E),
                        ),
                        CustomText(
                          title: 'John Doe',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.mainTextColor,
                        ),
                      ],
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Get.to(NotificationScreen());
                      },
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Image.asset(
                          AppImages.notification,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
            
                heightBox10,
                const Divider(
                  thickness: 1,
                  color: Color(0XFFD9D9D9),
                ),
                heightBox10,
            
                // Title for the profile list
                CustomText(
                  title: 'Your contacts are using Direct Hiring',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
            
                heightBox14,
            
                // Horizontal List of ProfileWidgets
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: profiles.length,
                    itemBuilder: (context, index) {
                      final profile = profiles[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: ProfileWidget(
                          name: profile['name'] ?? '',
                          imagePath: profile['image'] ?? '',
                        ),
                      );
                    },
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0XFFD9D9D9),
                ),
            
                heightBox14,
            
                CustomButton(title: 'Referred Your Friends', onTap: (){
                  _showCustomDialog(context);
                }),
            
                heightBox20,
            
                CustomText(
                  title: 'Explore trusted, verified families near you — \n'
                      'view profiles, and connect easily.',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainTextColor,
                ),
            

                heightBox14,

                // List of SingleHelperWidgets
                SingleHelperWidget(
                  imagePath: AppImages.profileOne,
                  name: 'Mr. Tan',
                  startDate: '30th March 2025',
                  location: 'Singapore',
                  onContactTap: () {
                    // Handle tap
                    Get.to(HelperDetailsView());
                  },
                )
            
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to show custom AlertDialog
  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogHelperWidget();
      },
    );
  }


}



