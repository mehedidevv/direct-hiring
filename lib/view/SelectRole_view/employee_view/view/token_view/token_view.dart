import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';

class TokenView extends StatelessWidget {
  const TokenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Token Balance Card
              Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  gradient: AppColors.containerGradient,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile + Notification
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(AppImages.profileOne),
                        ),
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Image.asset(AppImages.notification),
                        ),
                      ],
                    ),
                    heightBox14,
                    // Tokens Label
                    Row(
                      children: [
                        CustomText(
                          title: 'Tokens Balance',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color(0XFF767676),
                          letterSpacing: 0.2,
                        ),
                        widthBox20,
                        const Icon(Icons.visibility, size: 16, color: Color(0XFF767676)),
                      ],
                    ),
                    heightBox20,
                    // Token Amount
                    CustomText(
                      title: '\$1000.00',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color(0XFF3C3C3C),
                      letterSpacing: 0.2,
                    ),
                    const Spacer(),
                    // Buy Button
                    CustomButton(
                      height: 45,
                      title: 'Buy',
                      onTap: () {},
                    ),
                    heightBox10,
                  ],
                ),
              ),

              heightBox30,

              // Motivation Text
              Center(
                child: CustomText(
                  title: '🌟 Buy tokens to contact helpers today! 🌟',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0XFF545454),
                  letterSpacing: 0.2,
                  textAlign: TextAlign.center,
                ),
              ),

              heightBox20,

              // Token Package Title
              CustomText(
                title: 'Token Packages',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0XFF3C3C3C),
                letterSpacing: 0.2,
              ),

              heightBox20,

              // Token Cards
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 120,
                  child: SvgPicture.asset(
                    AppImages.silver,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),


              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 120,
                  child: SvgPicture.asset(
                    AppImages.goldCard,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),


              heightBox20,
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  height: 120,
                  child: SvgPicture.asset(
                    AppImages.platinum,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              heightBox30,
            ],
          ),
        ),
      ),
    );
  }
}
