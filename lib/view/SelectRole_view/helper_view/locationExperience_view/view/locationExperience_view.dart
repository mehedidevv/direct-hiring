import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/locationExperience_view/view/currentLocation_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../res/commonWidget/customAppBar.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../../widget/stepProgressIndicator_widget.dart';

class LocationExperienceView extends StatelessWidget {
  const LocationExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFB0DEBD), // Light green
                  Color(0xFFFFFFFF), // White
                ],
              ),
            ),
          ),

          // Main content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  // Custom AppBar on top of background
                  CustomAppBar(
                    title: 'Location Experience',
                    leadingIcon: Icons.arrow_back,
                    onLeadingTap: () {
                      Get.back();
                    },
                  ),

                  Spacer(),

                  // Center image
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.locationExperience),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Spacer(),

                  // Step indicator
                  StepProgressIndicator(currentStep: 2),

                  heightBox50,

                  // Next button
                  CustomButtonWithArrow(
                    title: 'Next',
                    onTap: () {
                      Get.to(CurrentLocationView());
                    },
                  ),

                  heightBox50,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

