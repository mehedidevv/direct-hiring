import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {

  static const whiteColor = Color(0XFFFFFFFF);
  static const mainTextColor = Color(0XFF3C3C3C);
  static const buttonColor = Color(0XFF33A954);
  static const primaryColor = Color(0XFF33A954);
  static const blackColor = Color(0XFF000000);

  // ✅ Reusable Linear Gradient
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color(0xFF33A954),
      Color(0xFF002B0A),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  // ✅ Reusable Linear Gradient
  static const LinearGradient containerGradient = LinearGradient(
    colors: [
      Color(0x4D33A954),
      Color(0xB333A954),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );





}
