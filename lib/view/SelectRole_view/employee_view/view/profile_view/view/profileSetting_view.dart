import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/view/changePassword_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/view/editProfile_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/view/privacyAndTerms_view.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/widget/deleteAccount_widget.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/profile_view/widget/logOutConfirmation_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../res/commonWidget/customAppBar.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../widget/customProfile_widget.dart';

class ProfileSettingView extends StatelessWidget {
  const ProfileSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: CustomAppBar(title: 'Setting',
          leadingIcon: Icons.arrow_back,
          onLeadingTap: Navigator.of(context).pop,
        ),
        body: SafeArea(
          child: SizedBox(
            width: width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    //Privacy Policy
                    CustomProfile(
                      assetImagePath: AppImages.privacyyy,
                      title: 'Privacy Policy',
                      backgroundColor: Color(0XFFFFFFFF),
                      textColor: Color(0XFF767676),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      onTap: ()=> Get.to(PrivacyAndTermsView(selectedTab: 0)),
                    ),

                    //Terms and Condition
                    CustomProfile(
                      assetImagePath: AppImages.termss,
                      title: 'Terms & Use',
                      backgroundColor: Color(0XFFFFFFFF),
                      textColor: Color(0XFF767676),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      onTap: ()=> Get.to(PrivacyAndTermsView(selectedTab: 1,)),
                    ),

                    //Log Out
                    CustomProfile(
                      assetImagePath: AppImages.closeee,
                      title: 'Delete My Account',
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
    builder: (context) => DeleteAccountWidget(
      onConfirm: () {
        Navigator.of(context).pop();
      },
      onCancel: () {
        Navigator.of(context).pop();
      },
    ),
  );
}






