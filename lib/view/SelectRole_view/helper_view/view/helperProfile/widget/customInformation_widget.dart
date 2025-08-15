import 'package:flutter/material.dart';
import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/commonWidget/customText.dart';

class CustomInformationTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  const CustomInformationTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: title,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              CustomText(
                title: subtitle,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.mainTextColor,
              ),
            ],
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: AppColors.mainTextColor,
            size: 20,
          ),
        ],
      ),
    );
  }
}
