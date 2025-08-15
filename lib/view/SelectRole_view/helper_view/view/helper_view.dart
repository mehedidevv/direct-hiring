import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/personalInformation_view/personalInformation_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/personalInformation_view/welomeSplash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../res/appImages/App_images.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../../employee_view/widget/alertDialog.dart';



class HelperView extends StatelessWidget {
  const HelperView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: Image.asset(AppImages.logo),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomText(
                          title: 'Direct Hiring',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0XFF232323),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),


                    CustomText(
                      title: 'Your commitment to ethical hiring',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF545454),
                    ),

                    SizedBox(
                      height: 20,
                    ),



                    CustomText(
                      title: 'By using our platform, you agree to uphold the following ethical standards when hiring a helper:',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF767676),
                    ),


                    SizedBox(
                      height: 20,
                    ),




                    //First Row For Icon And Text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFFE6F4EA),
                          ),
                          child: Center(
                            child: Image.asset(
                              AppImages.lockIcon,
                              height: 13,
                              width: 13,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'Preparing for the Interview',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFF33A954),
                                  letterSpacing: 0.2
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' - Make sure you have a stable internet connection for the online interview. Dress neatly for the interview, even if it\'s done through a video or phone call — first impressions matter!',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF767676),
                                      letterSpacing: 0.2
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFFE6F4EA),
                          ),
                          child: Center(
                            child: Image.asset(
                              AppImages.callenderIcon,
                              height: 10,
                              width: 10,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'During the Interview',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFF33A954),
                                  letterSpacing: 0.2
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' - Greet the employer politely with a smile. Speak clearly and use simple English. Be honest about your experience and share what you can and cannot do.',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF767676),
                                      letterSpacing: 0.2
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 25,
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0XFFE6F4EA),
                          ),
                          child: Center(
                            child: Image.asset(
                              AppImages.callenderIcon,
                              height: 12,
                              width: 12,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'After the Interview',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFF33A954),
                                  letterSpacing: 0.2
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' - Clarify your job scope and salary before accepting the job to avoid misunderstandings. You DO NOT need to pay anything to the employer. If any employer tries to deduct money from your salary, report them immediately.',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF767676),
                                      letterSpacing: 0.2
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),


                    SizedBox(
                      height: 50,
                    ),


                    Align(
                      alignment: Alignment.center,
                      child: CustomText(
                        title: 'By proceeding, you acknowledge and agree to uphold these commitments. Together, we can create a fair, respectful, and supportive working environment for everyone.',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF8C8C8C),
                        textAlign: TextAlign.center,
                      ),
                    ),

                    SizedBox(
                      height: 50,
                    ),


                    CustomButtonWithArrow(
                        height: 50,
                        title: "Continue",
                        onTap: (){
                          //TODO On Tab Method
                         // _showCustomDialog(context);
                         // Get.to(PersonalInformationView());
                          Get.to(WelcomeSplashview());
                        }),



                    SizedBox(
                      height: 20,
                    ),




                  ],
                ),
              ),
            )),
      ),
    );
  }

  // Function to show custom AlertDialog
  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialog();
      },
    );
  }



}
