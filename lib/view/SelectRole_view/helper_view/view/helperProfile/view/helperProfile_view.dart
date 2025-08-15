import 'dart:io';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/authentication_view/chatBot_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/inbox_view/inbox_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/inbox_view/messageView.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/view/privacyAndTerms_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperProfile/view/identity_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperProfile/view/presentationVideo_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperProfile/view/appSetting_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperProfile/widget/signOut_widget.dart';
import 'package:direct_hiring/view/onBoarding_view/messageView/messageView.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/appImages/App_images.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/common_controller/imagePick_controller.dart';
import '../../../../../../res/customStyle/custom_size.dart';
import '../../../../employee_view/view/home_view/widget/customLegalInformation_widget.dart';
import '../../../../employee_view/view/profile_view/controller/datePicker_controller.dart';
import '../widget/singleInformation_widget.dart';
import 'additionalInformation_view.dart';
import 'food_view.dart';
import 'jobScope_view.dart';

class HelperProfileView extends StatefulWidget {
  const HelperProfileView({super.key});

  @override
  State<HelperProfileView> createState() => _HelperProfileViewState();
}

class _HelperProfileViewState extends State<HelperProfileView> {
  final ImagePickController controller = Get.put(ImagePickController());
  final dateController = Get.put(DatePickerController());
  final _controller = TextEditingController();
  late ImagePicker _imagePicker;
  XFile? _pickedImage;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
    _controller.text = DateFormat('dd-MM-yyyy').format(dateController.selectedDate.value);
  }

  Future<void> _pickImage() async {
    final pickedFile = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _pickedImage = pickedFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Profile Image
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          radius: width * 0.15,
                          backgroundImage: _pickedImage == null
                              ? AssetImage(AppImages.profileOne)
                              : FileImage(File(_pickedImage!.path)) as ImageProvider,
                        ),
                        Positioned(
                          bottom: 1,
                          right: -1,
                          child: GestureDetector(
                            onTap: _pickImage,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.primaryColor,
                                  width: 2,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: width * 0.03,
                                backgroundColor: Colors.transparent,
                                child: Icon(
                                  Icons.edit,
                                  size: width * 0.04,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    CustomText(
                      title: 'Mr. Tan!',
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF4C4C4C),
                    ),
                  ],
                ),
              ),

              heightBox20,

              /// Header
              CustomText(
                title: 'Profile Information',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.mainTextColor,
              ),

              heightBox14,

              /// Identity
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left: Icon + Text
                  Row(
                    children: [
                      Icon(Icons.person, color: const Color(0XFF8C8C8C)),
                      widthBox10,
                      CustomText(
                        title: 'Identity',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: AppColors.mainTextColor,
                      ),
                    ],
                  ),

                  // Right: Button + Arrow
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Get.to(IdentityView());
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          decoration: BoxDecoration(
                            color: Color(0XFFFE5858),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: CustomText(
                              title: 'Incomplete',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                      widthBox14,
                      const Icon(Icons.arrow_forward_ios, color: Color(0XFF8C8C8C), size: 20),
                    ],
                  ),
                ],
              ),

              // heightBox14,
              //
              // /// Where I’d like to work
              // CustomInformationTile(
              //   icon: Icons.location_on,
              //   title: 'Where I’d like to work',
              //   buttonText: 'Done',
              //   onButtonTap: () {},
              //   onTileTap: () {},
              // ),

              heightBox14,

              /// Additional information
              CustomInformationTile(
                icon: Icons.calendar_month_sharp,
                title: 'Additional information',
                buttonText: 'Done',
                onButtonTap: () {
                  Get.to(AdditionalInformationView());
                },
                onTileTap: () {
                  Get.to(AdditionalInformationView());
                },
              ),

              heightBox14,

              /// Job Scope
              CustomInformationTile(
                icon: Icons.shopping_basket,
                title: 'Job Scope',
                buttonText: 'Done',
                onButtonTap: () {},
                onTileTap: () {
                  Get.to(JobScopeView());
                },
              ),

              heightBox14,

              /// Food
              CustomInformationTile(
                icon: Icons.restaurant,
                title: 'Food',
                buttonText: 'Done',
                onButtonTap: () {},
                onTileTap: () {
                  Get.to(FoodView());
                },
              ),

              heightBox20,

              /// Presentation Video Upload
              GestureDetector(
                onTap: () {
                  Get.to(PresentationVideoView());
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.video_call, color: Color(0XFF8C8C8C)),
                        widthBox10,
                        CustomText(
                          title: 'Presentation\nvideo',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColors.mainTextColor,
                        ),
                      ],
                    ),

                    const Spacer(),

                    Obx(() => GestureDetector(
                      onTap: controller.pickMainImageTwo,
                      child: DottedBorder(
                        options: RectDottedBorderOptions(
                          color: Colors.green,
                          strokeWidth: 1.5,
                          dashPattern: [6, 3],
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 120,
                          height: 80,
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.green.shade50,
                          ),
                          child: controller.mainImageTwo.value == null
                              ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.play_circle, size: 24, color: Colors.green),
                              const SizedBox(height: 4),
                              CustomText(
                                title: '100 Mb',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.mainTextColor,
                              ),
                            ],
                          )
                              : ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.file(
                              controller.mainImageTwo.value!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                        ),
                      ),
                    )),
                    widthBox14,
                    Column(
                      children: [

                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Image.asset(AppImages.editIcon),
                        ),

                        heightBox14,

                        const Icon(Icons.arrow_forward_ios, color: Color(0XFF8C8C8C), size: 20),

                      ],
                    )

                  ],
                ),
              ),

              heightBox20,

              /// Header
              CustomText(
                title: 'Media  0/10',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.mainTextColor,
              ),

              heightBox10,

              CustomText(
                title: 'Add nice pictures of dishes you can cook, your professional skills or your personal hobbies or passion!',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColors.mainTextColor,
              ),


              heightBox20,

              CustomText(
                title: 'Upload Image or Video',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.mainTextColor,
              ),

              heightBox10,

              //Image Picker Row
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

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
                              child: Icon(Icons.play_circle, size: 40, color: Colors.green),
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

                      Obx(() => GestureDetector(
                        onTap: controller.pickMainImageTwo,
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
                            child: controller.mainImageTwo.value == null
                                ? Center(
                              child: Icon(Icons.play_circle, size: 40, color: Colors.green),
                            )
                                : ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.file(
                                controller.mainImageTwo.value!,
                                fit: BoxFit.cover,
                                width: 150,
                                height: 150,
                              ),
                            ),
                          ),
                        ),
                      )),

                    ],
                  ),

                  heightBox14,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

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

                      Obx(() => GestureDetector(
                        onTap: controller.pickMainImageTwo,
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
                            child: controller.mainImageTwo.value == null
                                ? Center(
                              child: Icon(Icons.image, size: 40, color: Colors.green),
                            )
                                : ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.file(
                                controller.mainImageTwo.value!,
                                fit: BoxFit.cover,
                                width: 150,
                                height: 150,
                              ),
                            ),
                          ),
                        ),
                      )),


                    ],
                  ),
                  // Main Image (Large)


                  SizedBox(width: 12),

                ],
              ),


              heightBox20,

              /// Header
              CustomText(
                title: 'Do you need Help',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.mainTextColor,
              ),
              heightBox10,

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    title: 'Support on App',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.mainTextColor,
                  ),
                  SizedBox(

                    child: CustomButton(
                      title: 'Support',
                      onTap: () {
                        Get.to(ChatScreen());
                        // handle tap
                      },
                      width: 150,
                      isLoading: false, // add if your button supports loading
                    ),
                  ),
                ],
              ),


              heightBox20,

              /// Header
              CustomText(
                title: 'Legal',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.mainTextColor,
              ),
              heightBox20,

              // Terms and Conditions
              CustomLegalInformationTile(
                imagePath: AppImages.condition,
                title: 'Terms & Conditions',
                onTap: () {
                  Get.to(PrivacyAndTermsView(selectedTab: 1));
                  print("Terms tapped");
                },
              ),


              heightBox14,

              // Terms and Conditions
              CustomLegalInformationTile(
                imagePath: AppImages.Vector,
                title: 'Privacy policy',
                onTap: () {
                  Get.to(PrivacyAndTermsView(selectedTab: 0));
                  print("Terms tapped");
                },
              ),


              heightBox14,

              // Terms and Conditions
              CustomLegalInformationTile(
                imagePath: AppImages.settingIcon,
                title: 'App Seeting',
                onTap: () {
                  Get.to(SettingView());
                  print("Terms tapped");
                },
              ),


              heightBox14,

              // Terms and Conditions
              CustomLegalInformationTile(
                imagePath: AppImages.Logout,
                title: 'Log Out',
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => SignOutAccountDialog(
                    ),
                  );

                  print("Terms tapped");
                },
              ),



              heightBox20,

              /// Header
              CustomText(
                title: 'consectetur sapien aenean auctor. Felis ipsum amet justo in. Netus amet in egestas sed auctor lorem. Justo ullamcorper velit habitasse lorem eu arcu. Non enim a elit urna eget nibh quisque donec condimentum. Elit ut pellentesque neque in quis at viverra. Nisl etiam tristique odio eget convallis.',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColors.mainTextColor,
              ),





              heightBox20,
            ],
          ),
        ),
      ),
    );
  }
}


