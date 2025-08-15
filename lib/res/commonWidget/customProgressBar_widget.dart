import 'package:flutter/material.dart';

import '../appColors/App_Colors.dart';

class CustomProgressBar extends StatelessWidget {
  final double value;
  final double height;
  final Color activeColor;
  final Color inactiveColor;

  const CustomProgressBar({
    Key? key,
    required this.value,
    this.height = 7.0,
    this.activeColor = AppColors.primaryColor,
    this.inactiveColor = Colors.grey,
  })  : assert(value >= 0 && value <= 1),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: inactiveColor,
      ),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: value,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: activeColor,
          ),
        ),
      ),
    );
  }
}

// Example usage