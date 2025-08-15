import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../res/appImages/App_images.dart';
import '../../../res/commonWidget/customText.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// AppBar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.back();
                      },
                      child: CircleAvatar(
                        backgroundColor: const Color(0xFFE6F4EA),
                        radius: 25,
                        child: Icon(
                            Icons.arrow_back,
                            color: Color(0XFF4C4C4C)
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Align(
                alignment: Alignment.center,
                child: CustomText(
                    title: 'Notifications',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0XFF545454),
                  letterSpacing: 0.2,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),

              Divider(
                color: Color(0xFFB0B0B0),
                thickness: 1,
              ),


              SizedBox(height: 10),
              /// Body
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSectionHeader("Today, March 08, 2025"),

                      SizedBox(height: 10,),

                      _buildNotificationItem(
                        iconPath: AppImages.bell,
                        message:
                        "Your housekeeping service has been successfully booked. Our team will arrive on tomorrow at 10.00am.",
                        timeAgo: "1 hour ago",
                      ),

                      SizedBox(height: 10,),

                      _buildNotificationItem(
                        iconPath: AppImages.bell,
                        message:
                        "Your housekeeping service has been completed. We hope you are satisfied with the service!",
                        timeAgo: "1 hour ago",
                      ),

                      const SizedBox(height: 20),
                      _buildSectionHeader("Yesterday, March 07, 2025"),
                      SizedBox(height: 10,),
                      _buildNotificationItem(
                        iconPath: AppImages.bell,
                        message:
                        "Your housekeeping service has been canceled. If you need to rebook, please do so through the app.",
                        timeAgo: "1 hour ago",
                      ),

                      SizedBox(height: 10,),
                      _buildNotificationItem(
                        iconPath: AppImages.bell,
                        message:
                        "Reminder: Your housekeeping service is scheduled for 20–05–08–25 at 10.00am.",
                        timeAgo: "1 hour ago",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: CustomText(
       title:  title,
       fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Color(0XFF000000),
        letterSpacing: 0.2,
      ),
    );
  }

  Widget _buildNotificationItem({
    required String iconPath, // <-- asset image path
    required String message,
    required String timeAgo,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Icon from asset
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFE6F4EA),
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              iconPath,
              height: 20,
              width: 20,
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(width: 12),

          /// Message and time
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title: '"$message"',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF2C2C2C),
                  letterSpacing: 0.2,
                ),
                const SizedBox(height: 4),
                CustomText(
                  title: timeAgo,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFFBEBEBE),
                  letterSpacing: 0.2,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }



}
