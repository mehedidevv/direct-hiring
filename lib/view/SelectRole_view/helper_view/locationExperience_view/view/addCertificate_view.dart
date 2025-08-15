import 'dart:io';
import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/salaryDays_view/view/salaryDays_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AddCertificateView extends StatefulWidget {
  const AddCertificateView({super.key});

  @override
  State<AddCertificateView> createState() => _AddCertificateViewState();
}

class _AddCertificateViewState extends State<AddCertificateView> {
  final List<File> _certificates = [];

  Future<void> _pickCertificates() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['jpg', 'jpeg', 'pdf', 'doc', 'docx'],
      allowMultiple: true,
    );

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        _certificates.addAll(result.files.map((file) => File(file.path!)));
      });
    }
  }

  void _removeCertificate(int index) {
    setState(() {
      _certificates.removeAt(index);
    });
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
            // Logo
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
              onTap: _pickCertificates,
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
                          Icon(Icons.upload, size: 30, color: Colors.green),
                          SizedBox(height: 3),
                          CustomText(
                            title: 'Upload Certificate',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.mainTextColor,
                          ),
                          CustomText(
                            title: 'JPEG, PDF or DOC (Max 152 MB)',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            heightBox20,
            _certificates.isNotEmpty
                ? GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemCount: _certificates.length,
              itemBuilder: (context, index) {
                final file = _certificates[index];
                return Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey.shade100,
                      ),
                      child: file.path.toLowerCase().endsWith('.pdf') ||
                          file.path.toLowerCase().endsWith('.doc') ||
                          file.path.toLowerCase().endsWith('.docx')
                          ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.picture_as_pdf,
                              size: 40,
                              color: Colors.red,
                            ),
                            SizedBox(height: 8),
                            Text(
                              file.path.split('/').last,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )
                          : ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.file(
                          file,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: GestureDetector(
                        onTap: () => _removeCertificate(index),
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
            Spacer(),
            CustomButtonWithArrow(
              title: 'Next',
              onTap: () {
                Get.to(const SalaryDaysView());
              },
            ),
            heightBox50,
          ],
        ),
      ),
    );
  }
}