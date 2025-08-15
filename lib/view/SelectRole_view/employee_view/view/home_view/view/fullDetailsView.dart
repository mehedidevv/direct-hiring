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
import '../../../widget/alertDialog.dart';

class FullDetailsView extends StatelessWidget {
   FullDetailsView({super.key});

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
                    title: 'Full Details',
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

                  CustomText(
                    title: 'Presentation Video',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF3C3C3C),
                  ),

                  heightBox10,
                  //Video Player
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Column(
                      children: [
                        /// Video Player
                        Expanded(
                          child: VideoPlayerWidget(videoPath: 'assets/videos/video.mp4'),
                        ),

                      ],
                    ),
                  ),


                  heightBox20,

                  CustomText(
                    title: 'About Helper',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF3C3C3C),
                  ),

                  heightBox10,

                  Container(
                    padding: const EdgeInsets.all(10),
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
                    title: 'Helper Preferred Duties',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFF3C3C3C),
                  ),

                  heightBox10,
                  CustomText(
                    title: 'Following are the options that should be available with mths/yrs available',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF767676),
                  ),


                  heightBox20,

                  CustomText(
                    title: '• Care for Newborn (up to 6mths)',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF767676),
                  ),
                  heightBox10,
                  CustomText(
                    title: '• Care for Infant (6mths to 24mths))',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF767676),
                  ),
                  heightBox10,
                  CustomText(
                    title: '• Care for Elderly))',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF767676),
                  ),
                  heightBox10,
                  CustomText(
                    title: '• Care for Disabled))',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF767676),
                  ),

                  heightBox10,
                  CustomText(
                    title: '• Care for Special Needs))',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF767676),
                  ),

                  heightBox10,
                  CustomText(
                    title: '• Care for Pets))',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF767676),
                  ),

                  heightBox10,
                  CustomText(
                    title: '• Care for Dog))',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF767676),
                  ),

                  heightBox10,
                  CustomText(
                    title: '• General Housework))',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF767676),
                  ),

                  heightBox10,
                  CustomText(
                    title: '• Cooking))',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF767676),
                  ),

                  heightBox10,
                  CustomText(
                    title: '• Gardening))',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFF767676),
                  ),

                  heightBox20,
                  CustomText(
                    title: 'I can speak to:  Spoken Language(s)',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainTextColor,
                  ),

                  heightBox10,
                  CustomText(
                    title: 'English ,Bahasa Indonesia, Burmese ',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                  ),



                  heightBox20,
                  CustomText(
                    title: 'Questionnaire:',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainTextColor,
                  ),

                  heightBox10,
                  //Question 1
                  CustomText(
                    title: 'Do you have any allergies?',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                  ),
                  heightBox5,
                  Row(
                    children: [

                      CustomCircleCheckBoxWidget(
                        text: "Yes",
                        initialValue: true,
                        onChanged: (value) {
                          print("Checked? $value");
                        },
                      ),

                      widthBox40,

                      CustomCircleCheckBoxWidget(
                        text: "No",
                        initialValue: false,
                        onChanged: (value) {
                          print("Checked? $value");
                        },
                      ),
                    ],
                  ),


                  heightBox10,
                  //Question 2
                  CustomText(
                    title: 'Can you handle Pork ?',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                  ),
                  heightBox5,
                  Row(
                    children: [

                      CustomCircleCheckBoxWidget(
                        text: "Yes",
                        initialValue: true,
                        onChanged: (value) {
                          print("Checked? $value");
                        },
                      ),

                      widthBox40,

                      CustomCircleCheckBoxWidget(
                        text: "No",
                        initialValue: false,
                        onChanged: (value) {
                          print("Checked? $value");
                        },
                      ),
                    ],
                  ),


                  heightBox10,
                  //Question 3
                  CustomText(
                    title: 'Are you willing to share room with a family member?',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                  ),
                  heightBox5,
                  Row(
                    children: [

                      CustomCircleCheckBoxWidget(
                        text: "Yes",
                        initialValue: true,
                        onChanged: (value) {
                          print("Checked? $value");
                        },
                      ),

                      widthBox40,

                      CustomCircleCheckBoxWidget(
                        text: "No",
                        initialValue: false,
                        onChanged: (value) {
                          print("Checked? $value");
                        },
                      ),
                    ],
                  ),


                  heightBox10,
                  //Question 4
                  CustomText(
                    title: 'Are you able to work with another helper?',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                  ),
                  heightBox5,
                  Row(
                    children: [

                      CustomCircleCheckBoxWidget(
                        text: "Yes",
                        initialValue: true,
                        onChanged: (value) {
                          print("Checked? $value");
                        },
                      ),

                      widthBox40,

                      CustomCircleCheckBoxWidget(
                        text: "No",
                        initialValue: false,
                        onChanged: (value) {
                          print("Checked? $value");
                        },
                      ),
                    ],
                  ),


                  heightBox10,
                  //Question 5
                  CustomText(
                    title: 'Do you have any Tattoos?',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                  ),
                  heightBox5,
                  Row(
                    children: [

                      CustomCircleCheckBoxWidget(
                        text: "Yes",
                        initialValue: true,
                        onChanged: (value) {
                          print("Checked? $value");
                        },
                      ),

                      widthBox40,

                      CustomCircleCheckBoxWidget(
                        text: "No",
                        initialValue: false,
                        onChanged: (value) {
                          print("Checked? $value");
                        },
                      ),
                    ],
                  ),




                  heightBox20,
                  CustomText(
                    title: 'Pictures of food I have cooked before',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainTextColor,
                  ),

                  heightBox14,

                  //Image Picker Row
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Main Image (Large)
                      Obx(() => GestureDetector(
                        onTap: controller.pickMainImage,
                        child: DottedBorder(
                          options: RectDottedBorderOptions(
                            color: Colors.green,
                            strokeWidth: 1.5,
                            dashPattern: [6, 3],
                            padding: EdgeInsets.all(0),
                          ),
                          child: Container(
                            width: 150,
                            height: 175,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.green.shade50,
                            ),
                            child: controller.mainImage.value == null
                                ? Center(
                              child: Icon(Icons.image, size: 40, color: Colors.green),
                            )
                                : ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.file(
                                controller.mainImage.value!,
                                fit: BoxFit.cover,
                                width: 150,
                                height: 150,
                              ),
                            ),
                          ),
                        ),
                      )),

                      SizedBox(width: 12),

                      // Additional Images Column
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // First Row of Additional Images
                            Obx(() => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(2, (index) {
                                return GestureDetector(
                                  onTap: () => controller.pickAdditionalImage(index),
                                  child: DottedBorder(
                                    options: RectDottedBorderOptions(
                                      color: Colors.green,
                                      strokeWidth: 1.5,
                                      dashPattern: [6, 3],
                                      padding: EdgeInsets.all(0),
                                    ),
                                    child: Container(
                                      width: 100,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.green.shade50,
                                      ),
                                      child: controller.additionalImages[index] == null
                                          ? Center(
                                        child: Icon(Icons.image, size: 24, color: Colors.green),
                                      )
                                          : ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.file(
                                          controller.additionalImages[index]!,
                                          fit: BoxFit.cover,
                                          width: 90,
                                          height: 70,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            )),

                            SizedBox(height: 14),

                            // Second Row of Additional Images
                            Obx(() => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: List.generate(2, (index) {
                                return GestureDetector(
                                  onTap: () => controller.pickAdditionalImageTwo(index),
                                  child: DottedBorder(
                                    options: RectDottedBorderOptions(
                                      color: Colors.green,
                                      strokeWidth: 1.5,
                                      dashPattern: [6, 3],
                                      padding: EdgeInsets.all(0),
                                    ),
                                    child: Container(
                                      width: 100,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.green.shade50,
                                      ),
                                      child: controller.additionalImagesTwo[index] == null
                                          ? Center(
                                        child: Icon(Icons.image, size: 24, color: Colors.green),
                                      )
                                          : ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.file(
                                          controller.additionalImagesTwo[index]!,
                                          fit: BoxFit.cover,
                                          width: 90,
                                          height: 70,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            )),



                          ],
                        ),
                      ),
                    ],
                  ),

                  heightBox20,
                  CustomText(
                    title: ' Helper\s Employment History',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainTextColor,
                  ),
                  heightBox10,
                  Row(
                    children: [
                      CustomText(
                        title: 'Date of Employment:  ',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainTextColor,
                      ),

                      CustomText(
                        title: '03/2020 - 03/2024 ',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainTextColor,
                      ),
                    ],
                  ),

                  heightBox10,
                  Row(
                    children: [
                      CustomText(
                        title: 'Country Employment:  ',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainTextColor,
                      ),

                      CustomText(
                        title: 'Singapore',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainTextColor,
                      ),
                    ],
                  ),

                  heightBox10,
                  Row(
                    children: [
                      CustomText(
                        title: 'Nationality Of Employer:  ',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainTextColor,
                      ),

                      CustomText(
                        title: 'Japaness Employer',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainTextColor,
                      ),
                    ],
                  ),


                  heightBox20,
                  CustomText(
                    title: 'Job Scope',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainTextColor,
                  ),
                  heightBox10,
                  Row(
                    children: [
                      CustomText(
                        title: 'Employment History:  ',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainTextColor,
                      ),

                      CustomText(
                        title: ' more than one employer',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainTextColor,
                      ),
                    ],
                  ),

                  heightBox10,
                  Row(
                    children: [
                      CustomText(
                        title: 'Reason For Leaving :',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainTextColor,
                      ),

                      CustomText(
                        title: '  Completed contract',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainTextColor,
                      ),
                    ],
                  ),


                  heightBox20,
                  CustomText(
                    title: 'Disclaimer',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainTextColor,
                  ),
                  heightBox10,
                  CustomText(
                    title: 'The information provided above has been entered personally by the Helper. Direct Hiring is not responsible for the accuracy or completeness of the details submitted.',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                  ),

                  heightBox20,

                  Row(
                    children: [

                      Expanded(
                          child: CustomButton(
                              title: 'Contact 1 Token', onTap: (){
                        //TODO
                      })),

                      widthBox20,
                      Expanded(
                          child: CustomButtonTwo(
                              title: 'Shortlist', onTap: (){
                            //TODO
                          })),



                    ],
                  ),
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
