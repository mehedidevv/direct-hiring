import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:flutter/material.dart';

class AlertDialogHelperWidget extends StatelessWidget {
  const AlertDialogHelperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 16.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: IntrinsicHeight( // 👈 Ensures height is based on content
          child: Column(
            mainAxisSize: MainAxisSize.min, // 👈 Critical for content-based height
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

               CustomText(
                title: 'Referred Your friends for 5 Points?  ',
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF232323),
              ),

              heightBox20,

               CustomText(
                title:
                'You have insufficient Points to refresh at this moment. To earn Points, you will have to refer your friends to our app, for each friend successfully referred, you will earn 1 point. 5 Points will be required to Refresh.',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF232323),
                textAlign: TextAlign.center,
              ),

              heightBox20,

              CustomButton(
                title: 'Back',
                onTap: () => Navigator.pop(context),
              ),

              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
