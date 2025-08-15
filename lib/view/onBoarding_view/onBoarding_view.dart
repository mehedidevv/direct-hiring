import 'package:direct_hiring/view/SelectRole_view/selectRole_view.dart';
import 'package:direct_hiring/view/onBoarding_view/widget/bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/appColors/App_Colors.dart';
import '../../res/appImages/App_images.dart';
import '../../res/commonWidget/customText.dart';
import 'messageView/messageView.dart';
import 'notification/notificationView.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            // Background image container
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.backgroundImage),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
                ),
              ),
            ),

            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // Row For Notification And Message
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Notification Button
                        GestureDetector(
                          onTap: () {
                            Get.to(() => NotificationScreen());
                          },
                          child: Image.asset(AppImages.notification, height: 30, width: 24),
                        ),

                        GestureDetector(
                          onTap: () {
                            print('Hello');
                            Get.to(() => ChatScreen());
                          },
                          child: Image.asset(AppImages.message, height: 30, width: 24),
                        ),
                      ],
                    ),

                    const SizedBox(height: 25),

                    Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: CustomText(
                        title:
                        'Join the House Keeper Hiring Project - Be part of a team that brings dream homes to life! Competitive pay, great opportunities, and a chance to shine - apply now!',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 230),

                    // Row For Column
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0XFF010202),
                              border: Border.all(color: AppColors.buttonColor, width: 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  title: 'Login',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.whiteColor,
                                ),
                                const SizedBox(width: 10),
                                Image.asset(AppImages.forwardArrow, height: 24, width: 24),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              //TODO on Tab on Sign Up Button
                              Get.to(SelectroleView());
                            },
                            child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.buttonColor,
                                border: Border.all(color: AppColors.buttonColor, width: 2),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    title: 'Sign Up',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.whiteColor,
                                  ),
                                  const SizedBox(width: 10),
                                  Image.asset(AppImages.forwardArrow, height: 24, width: 24),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Bottom Sheet for Some height will be stack
            Align(
              alignment: Alignment.bottomCenter,
              child: DraggableScrollableSheet(
                initialChildSize: 0.3,
                minChildSize: 0.1,
                maxChildSize: 1,
                builder: (context, scrollController) {
                  return OnboardingBottomSheet(scrollController: scrollController);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
