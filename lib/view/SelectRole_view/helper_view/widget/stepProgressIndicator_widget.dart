import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../res/commonWidget/customText.dart';

class StepProgressIndicator extends StatelessWidget {
  final int currentStep; // starts from 1
  final int totalSteps;

  const StepProgressIndicator({
    Key? key,
    required this.currentStep,
    this.totalSteps = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(totalSteps * 2 - 1, (index) {
        if (index.isEven) {
          int step = (index ~/ 2) + 1;
          bool isActive = step == currentStep;

          return Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isActive ? AppColors.primaryColor: Colors.grey.shade300,
                width: 1,
              ),
              color: isActive ? Colors.white : Colors.transparent,
            ),
            alignment: Alignment.center,
            child: CustomText(
              title: '$step',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isActive ? Colors.black : Colors.grey,
            ),
          );
        } else {
          // Draw connecting line between steps
          return Expanded(
            child: Divider(
              thickness: 0.5,
              color: AppColors.primaryColor,
            ),
          );
        }
      }),
    );
  }
}

