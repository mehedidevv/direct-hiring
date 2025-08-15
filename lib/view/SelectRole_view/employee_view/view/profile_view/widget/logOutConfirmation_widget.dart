import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:flutter/material.dart';

class LogoutConfirmationDialog extends StatelessWidget {
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const LogoutConfirmationDialog({
    Key? key,
    required this.onConfirm,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 300,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Icon Circle
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFE6F4EA),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(12),
                child: Icon(
                  Icons.error_outline,
                  color: Colors.green,
                  size: 32,
                ),
              ),
              const SizedBox(height: 20),
              // Title
               CustomText(
               title:  'Log out',
                fontSize: 16,
                 fontWeight: FontWeight.w500,
                 color: Color(0XFF232323),
              ),
              const SizedBox(height: 12),
              // Message
              CustomText(
                title:  'Do you want to logout your profile?',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF232323),
                textAlign: TextAlign.center,
              ),


              const SizedBox(height: 24),
              // Buttons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.green,
                        side: BorderSide(color: Colors.green),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: onConfirm,
                      child:  CustomText(
                       title:  'Yes',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF009429),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0XFF009429),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: onCancel,
                      child:   CustomText(
                        title:  'No',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
