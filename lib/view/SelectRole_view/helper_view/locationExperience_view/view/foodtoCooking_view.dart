import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/locationExperience_view/view/myDocument_view.dart';
import 'package:get/get.dart';

class FoodToCookingView extends StatefulWidget {
  const FoodToCookingView({super.key});

  @override
  State<FoodToCookingView> createState() => _FoodToCookingViewState();
}

class _FoodToCookingViewState extends State<FoodToCookingView> {
  final List<File> _images = [];
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImages() async {
    final List<XFile>? pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles != null && pickedFiles.isNotEmpty) {
      setState(() {
        _images.addAll(pickedFiles.map((file) => File(file.path)));
      });
    }
  }

  void _removeImage(int index) {
    setState(() {
      _images.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Food to Cooking',
        leadingIcon: Icons.arrow_back,
        onLeadingTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox20,
              CustomText(
                title: 'Kindly mention up to 5 dishes you are skilled at cooking below:',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              heightBox10,
              RoundTextField(
                height: 100,
                hint: 'Chicken Curry, Fish and Chips, Fried Rice, Mee Goreng....',
                borderWidth: 0.8,
                focusBorderWidth: 1.3,
                maxLine: 5,
                vertical_padding: 10,
                borderRadius: 20,
                focusBorderRadius: 20,
              ),
              heightBox20,
              CustomText(
                title: 'Pictures of food you have cooked before',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.mainTextColor,
              ),
              heightBox10,
              GestureDetector(
                onTap: _pickImages,
                child: DottedBorder(
                  options: RectDottedBorderOptions(
                    color: Colors.green,
                    strokeWidth: 1.5,
                    dashPattern: [6, 3],
                    padding: EdgeInsets.zero,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.green.shade50,
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.image, size: 40, color: Colors.green),
                            SizedBox(height: 8),
                            CustomText(
                              title: 'Add Here',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.mainTextColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              heightBox20,
              _images.isNotEmpty
                  ? GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: _images.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.file(
                          _images[index],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: GestureDetector(
                          onTap: () => _removeImage(index),
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              )
                  : Container(),
              heightBox30,
              CustomButtonWithArrow(
                title: 'Next',
                onTap: () {
                  Get.to( MyDocumentView());
                },
              ),
              heightBox50,
            ],
          ),
        ),
      ),
    );
  }
}