import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/inbox_view/inbox_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/inbox_view/messageView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../res/appColors/App_Colors.dart';
import '../widget/shortListedCard_widget.dart';

class ShortlistView extends StatelessWidget {
  const ShortlistView({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data list
    final List<Map<String, String>> dummyHelpers = [
      {
        'name': 'Emma Grate',
        'subtitle': 'Filipino Helper...',
        'status': 'Transfer',
        'mainImage': AppImages.profileOne,
        'miniAvatar': AppImages.profileOne,
      },
      {
        'name': 'Linda Hope',
        'subtitle': 'Experienced Nanny...',
        'status': 'Available',
        'mainImage': AppImages.profileOne,
        'miniAvatar': AppImages.profileOne,
      },
      {
        'name': 'Grace Lee',
        'subtitle': 'Elderly Care Expert...',
        'status': 'Transfer',
        'mainImage': AppImages.profileOne,
        'miniAvatar': AppImages.profileOne,
      },

      {
        'name': 'Emma Grate',
        'subtitle': 'Filipino Helper...',
        'status': 'Transfer',
        'mainImage': AppImages.profileOne,
        'miniAvatar': AppImages.profileOne,
      },
      {
        'name': 'Linda Hope',
        'subtitle': 'Experienced Nanny...',
        'status': 'Available',
        'mainImage': AppImages.profileOne,
        'miniAvatar': AppImages.profileOne,
      },
      {
        'name': 'Grace Lee',
        'subtitle': 'Elderly Care Expert...',
        'status': 'Transfer',
        'mainImage': AppImages.profileOne,
        'miniAvatar': AppImages.profileOne,
      },

      {
        'name': 'Emma Grate',
        'subtitle': 'Filipino Helper...',
        'status': 'Transfer',
        'mainImage': AppImages.profileOne,
        'miniAvatar': AppImages.profileOne,
      },
      {
        'name': 'Linda Hope',
        'subtitle': 'Experienced Nanny...',
        'status': 'Available',
        'mainImage': AppImages.profileOne,
        'miniAvatar': AppImages.profileOne,
      },
      {
        'name': 'Grace Lee',
        'subtitle': 'Elderly Care Expert...',
        'status': 'Transfer',
        'mainImage': AppImages.profileOne,
        'miniAvatar': AppImages.profileOne,
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              heightBox14,

              CustomText(
                title: 'Helpers you have Shortlisted',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0XFF2A2A2A),
              ),
              heightBox14,

              // 🔁 List of Shortlisted Helpers
              Expanded(
                child: ListView.builder(
                  itemCount: dummyHelpers.length,
                  itemBuilder: (context, index) {
                    final helper = dummyHelpers[index];
                    return ShortListedCardWidget(
                      name: helper['name'] ?? '',
                      subtitle: helper['subtitle'] ?? '',
                      status: helper['status'] ?? '',
                      mainImage: helper['mainImage'] ?? AppImages.profileOne,
                      miniAvatar: helper['miniAvatar'] ?? AppImages.profileOne,
                      onMessageTap: () {
                        print("Message to ${helper['name']}");
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
