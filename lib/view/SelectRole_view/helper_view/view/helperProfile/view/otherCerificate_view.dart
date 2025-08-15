import 'dart:io';
import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButtonTwo.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/customStyle/custom_size.dart';

class OtherCertificateView extends StatefulWidget {
  OtherCertificateView({super.key});

  @override
  State<OtherCertificateView> createState() => _OtherCertificateViewState();
}

class _OtherCertificateViewState extends State<OtherCertificateView> {
  File? selectedDocument;

  Future<void> pickDocument() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result != null && result.files.single.path != null) {
      setState(() {
        selectedDocument = File(result.files.single.path!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Other Certification',
        leadingIcon: Icons.arrow_back,
        onLeadingTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightBox20,

            /// Logo
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0F2E9),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: SizedBox(
                      width: 90,
                      height: 90,
                      child: Image.asset(
                        AppImages.callenderIcon,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            heightBox20,

            CustomText(
              title: 'Do you possess a diploma or certification in caregiving?',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.mainTextColor,
            ),

            heightBox20,

            GestureDetector(
              onTap: pickDocument,
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
                    child: selectedDocument == null
                        ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.upload, size: 30, color: Colors.green),
                          const SizedBox(height: 3),
                          CustomText(
                            title: 'Upload Certificate',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.mainTextColor,
                          ),
                          CustomText(
                            title: 'PDF or DOC (Max 152 MB)',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600,
                          ),
                        ],
                      ),
                    )
                        : Center(
                      child: CustomText(
                        title: selectedDocument!.path.split('/').last,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.mainTextColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const Spacer(),

            Row(
              children: [
                Expanded(
                  child: CustomButtonTwo(
                    title: 'Close',
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: CustomButtonWithArrow(
                    title: 'Upload',
                    onTap: () {
                      if (selectedDocument == null) {
                        Get.snackbar("Upload Required", "Please select a document first.",
                            backgroundColor: Colors.red.shade100,
                            colorText: Colors.black);
                        return;
                      }

                      // Perform upload logic here...
                      Navigator.pop(context, selectedDocument);
                    },
                  ),
                ),
              ],
            ),

            heightBox30,
          ],
        ),
      ),
    );
  }
}

