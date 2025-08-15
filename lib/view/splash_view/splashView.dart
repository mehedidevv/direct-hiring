import 'dart:async';
import 'package:flutter/material.dart';
import '../../res/appColors/App_Colors.dart';
import '../../res/appImages/App_images.dart';
import '../../res/commonWidget/customText.dart';
import '../onBoarding_view/onBoarding_view.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    // Animation Controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _slideAnimation = Tween<Offset>(begin: const Offset(0, 0.2), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    // Start animations
    _controller.forward();

    // Navigate to OnBoardingScreen after 3.5 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnboardingView()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Center(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 164,
                    width: 164,
                    child: Image.asset(AppImages.logo),
                  ),
                  const SizedBox(height: 20),
                   CustomText(
                    title: 'Direct Hiring',
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Color(0XFF0B0B0B),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
