import 'package:flutter/material.dart';

import '../../../res/commonWidget/customText.dart';


class InfoCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle1;
  final String subtitle2;

  const InfoCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          /// Image Section
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: screenHeight * 0.25, // ~25% of screen height
              fit: BoxFit.cover,
            ),
          ),

          /// Text Section
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.04, // ~4% padding
              vertical: screenHeight * 0.015, // ~1.5% padding
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: CustomText(
                        title: title,
                        fontSize: screenWidth * 0.035, // Responsive font size
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF33A954),
                      ),
                    ),
                    Expanded(
                      child: CustomText(
                        title: subtitle1,
                        fontSize: screenWidth * 0.03,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF767676),
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                CustomText(
                  title: subtitle2,
                  fontSize: screenWidth * 0.03,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF767676),
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
