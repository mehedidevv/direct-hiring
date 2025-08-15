import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/alertDialog_widget.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:flutter/material.dart';

import '../../../widget/alertDialog.dart';

class HomeCardDetailsView extends StatelessWidget {
  const HomeCardDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with AppBar overlaid
          Stack(
            children: [
              SizedBox(
                height: 450,
                width: double.infinity,
                child: Image.asset(
                  AppImages.profileOne,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 350,
                left: 14,
                right: 14,
                child: CustomAppBar(
                  leadingIcon: Icons.arrow_back,
                  onLeadingTap: () => Navigator.pop(context),
                  title: 'Details',
                  titleColor: Colors.white,
                ),
              ),
            ],
          ),

          heightBox10,

          // Profile Info Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              children: [
                Row(
                  children: [
                    Image.asset(AppImages.detailsIcon, height: 40, width: 40),
                    widthBox14,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: 'Stephanie Jan...',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color(0XFF3C3C3C),
                        ),
                        CustomText(
                          title: '1 day ago',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0XFF3C3C3C),
                        ),
                      ],
                    ),
                  ],
                ),

                widthBox40,

                Expanded(
                  child: CustomButton(
                    title: 'Contact 1 Token',
                    onTap: () {
                      _showCustomDialog(context);
                    },
                  ),
                ),
              ],
            ),
          ),

          heightBox20,

          // Details List
          _iconTextRow(AppImages.locationIconn, 'Filipino'),
          heightBox10,
          _iconTextRow(AppImages.ageIconn, '37 years old'),
          heightBox10,
          _iconTextRow(AppImages.dollerIcon, '\$1000 and 4 Days Off'),
          heightBox10,
          _iconTextRow(AppImages.edit, 'Transfer'),
          heightBox10,
          _iconTextRow(AppImages.ageIconn, 'Total 6 years experience'),



          heightBox20,

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomText(
              title: 'About Helper',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0XFF3C3C3C),
            ),
          ),

          heightBox10,

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomText(
              title: 'Emma Grate is filipino.She is 32 years old. She is single. She studied until Secondary school. She has 2 years’ experience with newborns.',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: const Color(0XFF767676),
            ),
          ),


          heightBox14,

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CustomText(
              title: 'See more',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: const Color(0XFF3C3C3C),
            ),
          ),

        ],
      ),
    );
  }

  /// 🔁 Reusable method to build icon + text rows
  Widget _iconTextRow(String iconPath, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Image.asset(iconPath, height: 16, width: 16),
          widthBox14,
          Expanded(
            child: CustomText(
              title: text,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0XFF3C3C3C),
            ),
          ),
        ],
      ),
    );
  }


  // Function to show custom AlertDialog
  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogWidget();
      },
    );
  }



}
