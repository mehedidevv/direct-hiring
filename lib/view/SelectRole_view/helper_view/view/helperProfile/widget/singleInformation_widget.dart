import 'package:flutter/material.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/customStyle/custom_size.dart';

class CustomInformationTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String buttonText;
  final VoidCallback? onButtonTap;
  final VoidCallback? onTileTap;

  const CustomInformationTile({
    super.key,
    required this.icon,
    required this.title,
    required this.buttonText,
    this.onButtonTap,
    this.onTileTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTileTap,
      borderRadius: BorderRadius.circular(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left: Icon + Text
          Row(
            children: [
              Icon(icon, color: const Color(0XFF8C8C8C)),
              widthBox10,
              CustomText(
                title: title,
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
                onTap: onButtonTap,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: CustomText(
                      title: buttonText,
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
    );
  }
}
