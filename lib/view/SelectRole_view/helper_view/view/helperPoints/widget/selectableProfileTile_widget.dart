import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:flutter/material.dart';

import '../../../../../../res/appColors/App_Colors.dart';

class SelectableProfileTile extends StatelessWidget {
  final String name;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const SelectableProfileTile({
    Key? key,
    required this.name,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Row(
          children: [
            /// Profile image
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(imagePath),
            ),

            const SizedBox(width: 12),

            /// Name
            Expanded(
              child: CustomText(
                title: name,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,

              ),
            ),

            /// Checkmark
            Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? AppColors.primaryColor : Colors.grey,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
              )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}
