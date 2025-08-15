import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/appImages/App_images.dart';
import '../../../../../../res/commonWidget/RoundTextField.dart';
import '../../../../../../res/commonWidget/customAppBar.dart';
import '../../../../../../res/commonWidget/customButton.dart';
import '../../../../../../res/commonWidget/customDatePicker_widget.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/customStyle/custom_size.dart';
import '../controller/datePicker_controller.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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

// Image Picker
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
      appBar: CustomAppBar(
        title: "Edit Profile",
        leadingIcon: Icons.arrow_back,
        onLeadingTap: () => Navigator.of(context).pop(),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                              ?  AssetImage(AppImages.profileOne)
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
                                border: Border.all(color: AppColors.primaryColor, width: 2),
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

              /// Personal Info Header
              CustomText(
                title: 'Personal Information',
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: const Color(0xFF2E2E2E),
              ),

              heightBox20,

              /// First and Last Name
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: 'First Name',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF3C3C3C),
                        ),
                        heightBox10,
                        RoundTextField(hint: 'Mr.'),
                      ],
                    ),
                  ),
                  widthBox10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          title: 'Last Name',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF3C3C3C),
                        ),
                        heightBox10,
                        RoundTextField(hint: 'Tan'),
                      ],
                    ),
                  ),
                ],
              ),


              /// Email
              CustomText(
                title: 'Email address',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF3C3C3C),
              ),
              heightBox10,
              RoundTextField(hint: 'Enter Email'),



              /// Phone
              CustomText(
                title: 'Phone Number',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF3C3C3C),
              ),
              heightBox10,
              RoundTextField(hint: '+65...'),



              /// Language
              CustomText(
                title: 'Language',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF3C3C3C),
              ),
              heightBox10,
              RoundTextField(hint: 'English'),



              /// Location
              CustomText(
                title: 'Location',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF3C3C3C),
              ),
              heightBox10,
              RoundTextField(hint: 'Singapore'),




              /// Job Scope
              CustomText(
                title: 'Job Scope',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF3C3C3C),
              ),
              heightBox10,
              RoundTextField(
                maxLine: 5,
                  hint: 'Care for newborn,Cleaning, Cooking, Children above 3 years old, Dogs & Cats.'),




              /// Salary Helper
              CustomText(
                title: 'Salary Helper',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF3C3C3C),
              ),
              heightBox10,
              RoundTextField(hint: '\$750 to  \$___'),


              ///  Type of Residence
              CustomText(
                title: ' Type of Residence',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF3C3C3C),
              ),
              heightBox10,
              RoundTextField(hint: 'Landed...'),

              //
              // /// Date of Birth
              // CustomText(
              //   title: 'Date of birth',
              //   fontSize: 14,
              //   fontWeight: FontWeight.w400,
              //   color:  Color(0xFF3C3C3C),
              // ),
              // heightBox10,
              //
              // /// Custom Date Picker
              // CustomDatePicker(
              //   dateController: dateController,
              //   textController: _controller,
              // ),

              heightBox30,

              /// Save Button
              CustomButton(
                title: 'Save',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
