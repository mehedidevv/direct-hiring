import 'package:flutter/material.dart';
import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/appImages/App_images.dart';
import '../../../../../../res/commonWidget/customText.dart';

class SingleProfileWidget extends StatefulWidget {
  final VoidCallback? onTapCard;
  final VoidCallback? onTapContact;

  const SingleProfileWidget({
    super.key,
    this.onTapCard,
    this.onTapContact,
  });

  @override
  State<SingleProfileWidget> createState() => _SingleProfileWidgetState();
}

class _SingleProfileWidgetState extends State<SingleProfileWidget> {
  bool isChecked = true;

  void toggleCheck() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTapCard, // Full card onTap
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  AppImages.profileOne,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 140,
                ),
              ),

              const SizedBox(height: 10),

              /// Name + Heart
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                         CustomText(
                          title: 'Stephanie Jan...',
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF4C4C4C),
                        ),
                        Positioned(
                          right: 20,
                          top: -4,
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: const BoxDecoration(
                              color: AppColors.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.check,
                              size: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: toggleCheck,
                    child: Icon(
                      Icons.favorite,
                      size: 20,
                      color: isChecked ? AppColors.primaryColor : Colors.grey,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 4),
               CustomText(
                title: '1 day ago',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF767676),
              ),
              const SizedBox(height: 10),

              _infoRow(AppImages.location, 'Indonesian'),
              _infoRow(AppImages.age, '37 years old'),
              _infoRow(AppImages.curency, '\$800 and 4 Days Off'),
              _infoRow(AppImages.status, 'Status-Transfer'),
              _infoRow(AppImages.age, 'Total 6 years experience'),

              const SizedBox(height: 10),

              /// Contact Button
              GestureDetector(
                onTap: widget.onTapContact, // Separate tap for Contact
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          title: 'Contact',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                         CustomText(
                          title: '1 Token',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  Widget _infoRow(String iconPath, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Image.asset(iconPath, height: 14, width: 14),
          const SizedBox(width: 8),
          Expanded(
            child: CustomText(
              title: text,
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF767676),
            ),
          ),
        ],
      ),
    );
  }
}
