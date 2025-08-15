
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import '../appColors/App_Colors.dart';
import 'customText.dart';

// round_button.dart

class CustomButtonTwo extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool isLoading;
  final double width;
  final double height;
  final double padding_vertical;
  final double borderRadius;
  final LinearGradient? buttonColor;
  final double fontSize;
  final Color? borderColor; // ✅ New
  final double borderWidth; // ✅ New
  final Color? titleColor;
  final Widget? widget;

  const CustomButtonTwo({
    super.key,
    required this.title,
    required this.onTap,
    this.isLoading = false,
    this.width = double.infinity,
    this.height = 50.0,
    this.padding_vertical = 12.0,
    this.borderRadius = 14,
    this.buttonColor = AppColors.primaryGradient,
    this.borderColor = Colors.green, // ✅ Default green
    this.borderWidth = 1.5,           // ✅ Default width
    this.titleColor = Colors.black,
    this.widget,
    this.fontSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: borderColor ?? Colors.green,
            width: borderWidth,
          ),
        ),
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(vertical: padding_vertical),
        child: isLoading
            ? Center(
          child: SpinKitDualRing(
            size: 20,
            color: Colors.white,
          ),
        )
            : widget ??
            CustomText(
              title: title,
              style: GoogleFonts.poppins(
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
                color: titleColor,
              ),
            ),
      ),
    );
  }
}


