import 'package:flutter/material.dart';

//Custom Container For Each Section in Profile

class CustomProfile extends StatelessWidget {
  final String assetImagePath;
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final double height;
  final VoidCallback? onTap; // Added onTap callback

  const CustomProfile({
    Key? key,
    required this.assetImagePath,
    required this.title,
    required this.backgroundColor,
    required this.textColor,
    required this.width,
    required this.height,
    this.onTap, // Optional
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Call the onTap function when tapped
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(
              height: height * 0.05,
              width: width * 0.06,
              child: Image.asset(assetImagePath),
            ),
            const SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: textColor,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              size: 14,
              color: Color(0XFF767676),
            ),
          ],
        ),
      ),
    );
  }
}