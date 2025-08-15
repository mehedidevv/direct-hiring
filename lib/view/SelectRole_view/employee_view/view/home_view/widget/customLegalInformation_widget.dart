import 'package:flutter/material.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/customStyle/custom_size.dart';

class CustomLegalInformationTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback? onTap;

  const CustomLegalInformationTile({
    super.key,
    required this.imagePath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(imagePath),
              ),
              widthBox10,
              CustomText(
                title: title,
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColors.mainTextColor,
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: AppColors.mainTextColor,
          ),
        ],
      ),
    );
  }
}
