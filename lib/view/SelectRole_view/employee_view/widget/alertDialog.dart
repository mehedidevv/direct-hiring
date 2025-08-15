import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/appColors/App_Colors.dart';
import '../../../../res/commonWidget/customButtonTwo.dart';
import '../view/authentication_view/submitRequirement_view.dart';

class CustomAlertDialog extends StatelessWidget {
  // URL to open when user taps the button
  final Uri _url = Uri.parse('https://portal.singpass.gov.sg/home/ui/register/instructions');

   CustomAlertDialog({super.key});

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
                  title: 'Verify Your Profile',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF232323),
                ),
                const SizedBox(height: 20),

                // Verify with SingPass Button
                CustomButton(
                    title: 'Verify With SingPass',
                    height: 50,
                    borderRadius: 14,
                    onTap: ()=> _launchUrl() ),


                // GestureDetector(
                //   onTap: () {
                //     _launchUrl(); // Launch the URL when tapped
                //   },
                //   child: Container(
                //     height: 56,
                //     width: double.infinity,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(16),
                //       color: const Color(0xFF33A954),
                //       border: Border.all(
                //         color: const Color(0xFF33A954),
                //         width: 1,
                //       ),
                //     ),
                //     child:  Center(
                //       child: CustomText(
                //         title: 'Verify with SingPass',
                //         fontSize: 16,
                //         fontWeight: FontWeight.w500,
                //         color: Colors.white,
                //         letterSpacing: 0.2,
                //       ),
                //     ),
                //   ),
                //
                // ),


                 SizedBox(height: 20),


                // Return Later Button
                CustomButtonTwo(
                  title: 'Return later',
                  onTap: () {
                    Get.to(SubmitrequirementView());
                  },
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to launch the URL
  Future<void> _launchUrl() async {
    try {
      // Use the updated launchUrl API
      if (await canLaunchUrl(_url)) {
        await launchUrl(
          _url,
          mode: LaunchMode.externalApplication, // Opens in the default browser
        );
      } else {
        throw 'Could not launch $_url';
      }
    } catch (e) {
      print("Error launching URL: $e");
    }
  }
}

