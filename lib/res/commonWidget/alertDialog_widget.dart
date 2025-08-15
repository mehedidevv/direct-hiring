import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/home_view/view/fullDetailsView.dart';
import 'package:flutter/material.dart';
import '../../../../res/commonWidget/customButtonTwo.dart';
import 'package:get/get.dart';

class AlertDialogWidget extends StatelessWidget {

  AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 16.0,
      child: Container(
        height: 280,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xFFFDFDFD),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                CustomText(
                  title: 'Contact this helper for 1 token? ',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF232323),
                ),

                 heightBox20,

                CustomText(
                  title: 'Once you confirm, you can proceed to communicate with the helper in your Inbox. ',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF232323),
                ),

                heightBox20,

                CustomText(
                  title: 'Note: 1 Token will be deducted as a result. ',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF232323),
                ),

                heightBox20,

                Row(
                  children: [

                    Expanded(
                      child: CustomButton(
                        title: 'Confirm',
                        onTap: () => Get.to(FullDetailsView()),
                      ),
                    ),

                    widthBox14,

                    Expanded(
                      child: CustomButtonTwo(
                        title: 'Cancel',
                        onTap: () => Navigator.pop(context),
                      ),)

                  ],
                ),
                // Verify with SingPass Button




                SizedBox(height: 20),






              ],
            ),
          ),
        ),
      ),
    );
  }

}

