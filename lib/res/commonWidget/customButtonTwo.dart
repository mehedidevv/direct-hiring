import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import '../appColors/App_Colors.dart';
import 'customText.dart';

class CustomButtonTwo extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final bool isLoading;
  final double width;
  final double height;
  final double paddingVertical;
  final double borderRadius;
  final Color borderColor;
  final Color backgroundColor;
  final Color textColor;
  final double fontSize;
  final Widget? widget;

  const CustomButtonTwo({
    super.key,
    required this.title,
    required this.onTap,
    this.isLoading = false,
    this.width = double.infinity,
    this.height = 56.0,
    this.paddingVertical = 12.0,
    this.borderRadius = 16.0,
    this.borderColor = const Color(0xFF33A954),
    this.backgroundColor = Colors.white,
    this.textColor = const Color(0xFF545454),
    this.fontSize = 16.0,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        alignment: Alignment.center,
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(vertical: paddingVertical),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: borderColor,
            width: 1.0,
          ),
        ),
        child: isLoading
            ? const SpinKitDualRing(
          size: 20,
          color: Color(0xFF33A954),
        )
            : widget ??
            CustomText(
              title: title,
              style: GoogleFonts.poppins(
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
      ),
    );
  }
}
