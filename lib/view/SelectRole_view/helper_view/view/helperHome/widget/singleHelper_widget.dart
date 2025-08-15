import 'package:flutter/material.dart';
import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';

class SingleHelperWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String startDate;
  final String location;
  final VoidCallback? onContactTap;

  const SingleHelperWidget({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.startDate,
    required this.location,
    this.onContactTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth < 400 ? screenWidth * 0.9 : 300.0;

    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        //  border: Border.all(color: AppColors.primaryColor.withOpacity(0.3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Profile Image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),

            // Name with verified dot
            Row(
              children: [
                 CustomText(
                  title: "Name:",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black87,
                ),
                const SizedBox(width: 4),
                Flexible(
                  child: CustomText(
                    title: name,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.verified, color: Colors.green, size: 16),
              ],
            ),
            const SizedBox(height: 6),

            // Start Date
            Row(
              children: [
                const Icon(Icons.calendar_today, size: 16, color: Colors.green),
                const SizedBox(width: 6),
                Flexible(
                  child: CustomText(
                    title: 'Start on $startDate',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 6),

            // Location
            Row(
              children: [
                const Icon(Icons.location_on, size: 16, color: Colors.green),
                const SizedBox(width: 6),
                Flexible(
                  child: CustomText(
                    title: location,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black87,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Contact Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: onContactTap,
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: AppColors.primaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                child: CustomText(
                title:   "Contact",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.mainTextColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
