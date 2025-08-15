import 'dart:ui' as BorderType;

import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/alertDialog_widget.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonTwo_widget.dart';
import 'package:direct_hiring/res/commonWidget/customCircleCheckBox_widget.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/common_controller/imagePick_controller.dart';
import '../../../../../onBoarding_view/widget/bottomsheet.dart';

class HelperDetailsView extends StatelessWidget {
  HelperDetailsView({super.key});

  final ImagePickController controller = Get.put(ImagePickController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with AppBar overlaid
            Stack(
              children: [
                SizedBox(
                  height: 400,
                  width: double.infinity,
                  child: Image.asset(
                    AppImages.profileOne,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 300,
                  left: 14,
                  right: 14,
                  child: CustomAppBar(
                    leadingIcon: Icons.arrow_back,
                    onLeadingTap: () => Navigator.pop(context),
                    title: 'Helper Details',
                    titleColor: Colors.white,
                  ),
                ),
              ],
            ),

            heightBox10,

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Profile Info Row
                  Row(
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


                    ],
                  ),

                  heightBox20,

                  // Details List
                  _iconTextRow(AppImages.locationIconn, 'Singapore'),
                  heightBox10,
                  _iconTextRow(AppImages.calendar, 'Start on 31 December 2025'),
                  heightBox10,
                  _iconTextRow(AppImages.timer, 'Seen online today'),

                  heightBox20,

                  CustomText(
                    title: 'Description',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF3C3C3C),
                  ),

                  heightBox10,

                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.primaryColor),
                    ),
                    child:  CustomText(
                      title: 'Lorem ipsum dolor sit amet consectetur. Ultrices id feugiat venenatis habitant mattis viverra elementum purus volutpat. Lacus eu molestie pulvinar rhoncus integer proin elementum. Pretium sit fringilla massa tristique aenean commodo leo. Aliquet viverra amet sit porta elementum et pellentesque posuere.',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0XFF767676),
                    ),
                  ),

                  heightBox20,

                  CustomText(
                    title: 'Job Scope',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.mainTextColor,
                  ),

                  heightBox10,
                  CustomText(
                    title: 'Care for newborn,Cleaning, Cooking,Children above 3 years old, Dogs & Cats ',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                  ),

                  heightBox20,

                  CustomText(
                    title: 'Languages',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.mainTextColor,
                  ),

                  heightBox10,
                  CustomText(
                    title: 'English',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                  ),


                  heightBox20,

                  CustomText(
                    title: 'Location',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.mainTextColor,
                  ),

                  heightBox10,
                  CustomText(
                    title: 'Singapore',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                  ),



                  heightBox20,

                  CustomText(
                    title: 'Salary',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.mainTextColor,
                  ),

                  heightBox10,
                  CustomText(
                    title: '\$900',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                  ),

                  heightBox20,

                  CustomText(
                    title: 'Type of Residency',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.mainTextColor,
                  ),

                  heightBox10,
                  CustomText(
                    title: 'Landed',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                  ),

                  heightBox20,

                  CustomButton(
                      title: 'Message', onTap: (){
                    //TODO
                  }),

                  heightBox50,

                ],
              ),
            )


          ],
        ),
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





}
