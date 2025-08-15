import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../res/appImages/App_images.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../../widget/alertDialog.dart';


class CommitmentView extends StatelessWidget {
  const CommitmentView({super.key});

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
                  title: 'By using our platform you commit to the following',
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
                  text: 'Hire With Full Transparency',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF33A954),
                    letterSpacing: 0.2
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' - Ensure that the job requirements are discussed and agreed during the interview. After the helper joins your family, ensure that the job requirements don\'t change without prior consent from the helper.',
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
                          AppImages.dollerIcon,
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
                          text: 'No Salary Deductions',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF33A954),
                              letterSpacing: 0.2
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' - Your helper will NOT need to pay for any thing for this hire. DO NOT attempt to deduct any fees from her salary as it will lead to instant permanent ban from our platform.',
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
                          text: 'Weekly Rest Days',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF33A954),
                              letterSpacing: 0.2
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' - A well-rested helper is important for her to recharge and continue with her optimal performance for your family. Do provide weekly day off, preferably on a Sunday to your helper.',
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
                  height: 30,
                ),
            
            
                Align(
                  alignment: Alignment.center,
                  child: CustomText(
                    title: 'By proceeding you acknowledge and agree to uphold these commitments. Together we create a fair and supportive working environment for everyone.',
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF8C8C8C),
                    textAlign: TextAlign.center,
                  ),
                ),
            
                SizedBox(
                  height: 50,
                ),
            
            
                CustomButton(
                  height: 50,
                    title: "Continue",
                    onTap: (){
                      //TODO On Tab Method
                      _showCustomDialog(context);
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
