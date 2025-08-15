import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../res/appColors/App_Colors.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../../../../../res/customStyle/custom_size.dart';

class CustomDocumentUploadRow extends StatelessWidget {
  final String title;
  final bool isRequired;
  final VoidCallback onAdd;

  const CustomDocumentUploadRow({
    Key? key,
    required this.title,
    required this.onAdd,
    this.isRequired = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: CustomText(
                  title: title,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.mainTextColor,
                ),
              ),
              if (isRequired) widthBox10,
              if (isRequired)
                CustomText(
                  title: '(Required)',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.red,
                ),
            ],
          ),
        ),
        InkWell(
          onTap: onAdd,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.primaryColor,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                CustomText(
                  title: 'Add',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor,
                ),
                widthBox10,
                Icon(Icons.add, color: AppColors.primaryColor, size: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
