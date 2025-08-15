import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/appImages/App_images.dart';
import '../../../../../../res/commonWidget/customText.dart';

class ProfileWidget extends StatelessWidget {
  final String name;
  final String imagePath;

  const ProfileWidget({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 6),
        CustomText(
          title: name,
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.mainTextColor,
        ),
      ],
    );
  }
}
