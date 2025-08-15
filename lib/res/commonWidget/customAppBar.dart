import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData? leadingIcon;
  final VoidCallback? onLeadingTap;
  final Color? titleColor; // Optional title color

  const CustomAppBar({
    Key? key,
    required this.title,
    this.leadingIcon,
    this.onLeadingTap,
    this.titleColor, // Add to constructor
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: CustomText(
        title: title,
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: titleColor ?? const Color(0XFF767676), // Fallback to default
      ),
      leading: leadingIcon == null
          ? null
          : GestureDetector(
        onTap: onLeadingTap,
        child: Container(
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color(0XFFE6F4EA),
            shape: BoxShape.circle,
          ),
          child: Icon(
            leadingIcon,
            size: 22,
            color: const Color(0XFF4C4C4C),
          ),
        ),
      ),
    );
  }
}
