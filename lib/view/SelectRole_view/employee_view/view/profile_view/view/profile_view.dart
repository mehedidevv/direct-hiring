import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/view/changePassword_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/view/editProfile_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/view/privacyAndTerms_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/view/profileSetting_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/view/token_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/widget/customProfile_widget.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/widget/logOutConfirmation_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../onBoarding_view/messageView/messageView.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.whiteColor,

        body: SafeArea(
          child: SizedBox(
            width: width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 10,),

                    //Column For Profile Image and Name
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: width * 0.15,
                            backgroundImage: AssetImage(AppImages.profileOne),
                          ),
                           heightBox10,
                          CustomText(
                            title: 'Mr. Tan!',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0XFF2E2E2E),
                          ),
                        ],
                      ),
                    ),



                    heightBox20,

                    CustomProfile(
                      assetImagePath: AppImages.contactSupport,
                      title: 'Contact Support',
                      backgroundColor: Color(0XFFE6F4EA),
                      textColor: Color(0XFF009429),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      onTap: ()=> Get.to(ChatScreen()),
                    ),

                    //
                    // CustomProfile(
                    //   assetImagePath: AppImages.verifySingPass,
                    //   title: 'Verify my profile with Singpass',
                    //   backgroundColor: Color(0XFFFFFFFF),
                    //   textColor: Color(0XFF767676),
                    //   width: MediaQuery.of(context).size.width,
                    //   height: MediaQuery.of(context).size.height,
                    // ),


                    //Edit Profile
                    CustomProfile(
                      assetImagePath: AppImages.editProfile,
                      title: 'Edit Profile',
                      backgroundColor: Color(0XFFFFFFFF),
                      textColor: Color(0XFF767676),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,

                      //on tap Method
                      onTap: (){
                        Get.to(EditProfileScreen());
                      },
                    ),


                    //Token
                    CustomProfile(
                      assetImagePath: AppImages.tokenProfile,
                      title: 'Tokens',
                      backgroundColor: Color(0XFFFFFFFF),
                      textColor: Color(0XFF767676),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      onTap: ()=> Get.to(TokenView()),
                    ),

                    //
                    //
                    // //Shortlist
                    // CustomProfile(
                    //   assetImagePath: AppImages.shortListProfile,
                    //   title: 'Chat',
                    //   backgroundColor: Color(0XFFFFFFFF),
                    //   textColor: Color(0XFF767676),
                    //   width: MediaQuery.of(context).size.width,
                    //   height: MediaQuery.of(context).size.height,
                    //   onTap: () => Get.to(ChatScreen()),
                    // ),



                    //Change Password
                    CustomProfile(
                      assetImagePath: AppImages.changePassword,
                      title: 'Change Password',
                      backgroundColor: Color(0XFFFFFFFF),
                      textColor: Color(0XFF767676),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,

                      //OnTab
                      onTap: (){
                        Get.to(ChangePassword());
                      },
                    ),

                    //Settings
                    CustomProfile(
                      assetImagePath: AppImages.setting,
                      title: 'Settings',
                      backgroundColor: Color(0XFFFFFFFF),
                      textColor: Color(0XFF767676),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      onTap: ()=> Get.to(ProfileSettingView()),
                    ),


                    //Log Out
                    CustomProfile(
                      assetImagePath: AppImages.Logout,
                      title: 'Log Out',
                      backgroundColor: Color(0XFFFFFFFF),
                      textColor: Colors.red,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,

                      //On Tab
                      onTap: (){

                       _showLogoutDialogConfirmation(context);

                      },
                    ),




                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _showLogoutDialogConfirmation(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => LogoutConfirmationDialog(
      onConfirm: () {
        //Navigator.of(context).pop();
      },
      onCancel: () {
        Navigator.of(context).pop();
      },
    ),
  );
}





