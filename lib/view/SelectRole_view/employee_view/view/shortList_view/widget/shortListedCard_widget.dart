import 'package:flutter/material.dart';
import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/commonWidget/customText.dart';

class ShortListedCardWidget extends StatelessWidget {
  final String name;
  final String subtitle;
  final String status;
  final String mainImage;
  final String miniAvatar;
  final VoidCallback? onMessageTap;

  const ShortListedCardWidget({
    super.key,
    required this.name,
    required this.subtitle,
    required this.status,
    required this.mainImage,
    required this.miniAvatar,
    this.onMessageTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left Profile Image
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(mainImage),
          ),
          const SizedBox(width: 12),

          // Center Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name & Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      title: name,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: AppColors.mainTextColor,
                    ),
                    GestureDetector(
                      onTap: onMessageTap,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: const Color(0xFF33A954),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Message',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                CustomText(
                  title: subtitle,
                  fontSize: 14,
                  color: AppColors.mainTextColor,
                  fontWeight: FontWeight.w500,
                ),

                const SizedBox(height: 4),

                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Status: ',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                      TextSpan(
                        text: status,
                        style: const TextStyle(
                          color: Color(0xFF33A954),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    CircleAvatar(
                      radius: 14,
                      backgroundImage: AssetImage(miniAvatar),
                    ),
                    const SizedBox(width: 8),
                    CustomText(
                      title: name,
                      fontSize: 13,
                      color: AppColors.mainTextColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
