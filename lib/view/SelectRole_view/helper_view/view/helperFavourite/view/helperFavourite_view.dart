import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/inbox_view/messageView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widget/singleFavourite_widget.dart';

class HelperFavouriteView extends StatelessWidget {
  HelperFavouriteView({super.key});

  final List<Map<String, dynamic>> favouriteHelpersList = [
    {
      'imageUrl': AppImages.favImg1,
      'name': 'Emma Grate',
      'subtitle': 'Filipino Helper...',
      'status': 'Transfer',
      'smallAvatarUrl': AppImages.favImg1,
    },
    {
      'imageUrl': AppImages.favImg2,
      'name': 'Maria Belle',
      'subtitle': 'Indonesian Helper...',
      'status': 'Available',
      'smallAvatarUrl': AppImages.favImg2,
    },
    {
      'imageUrl': AppImages.favImg3,
      'name': 'Lina Tan',
      'subtitle': 'Thai Helper...',
      'status': 'Transfer',
      'smallAvatarUrl': AppImages.favImg3,
    },
    {
      'imageUrl': AppImages.favImg1,
      'name': 'Emma Grate',
      'subtitle': 'Filipino Helper...',
      'status': 'Transfer',
      'smallAvatarUrl': AppImages.favImg1,
    },
    {
      'imageUrl': AppImages.favImg2,
      'name': 'Maria Belle',
      'subtitle': 'Indonesian Helper...',
      'status': 'Available',
      'smallAvatarUrl': AppImages.favImg2,
    },
    {
      'imageUrl': AppImages.favImg3,
      'name': 'Lina Tan',
      'subtitle': 'Thai Helper...',
      'status': 'Transfer',
      'smallAvatarUrl': AppImages.favImg3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox20,

              CustomText(
                title: 'Employer you have Shortlisted',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.mainTextColor,
              ),

              heightBox20,

              // ✅ FIX: Wrap ListView.builder with Expanded
              Expanded(
                child: ListView.builder(
                  itemCount: favouriteHelpersList.length,
                  itemBuilder: (context, index) {
                    final item = favouriteHelpersList[index];
                    return SingleFavouriteWidget(
                      imageUrl: item['imageUrl'],
                      name: item['name'],
                      subtitle: item['subtitle'],
                      status: item['status'],
                      smallAvatarUrl: item['smallAvatarUrl'],
                      onMessageTap: () {
                        print("Message tapped for ${item['name']}");
                        Get.to(MessageView());
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
