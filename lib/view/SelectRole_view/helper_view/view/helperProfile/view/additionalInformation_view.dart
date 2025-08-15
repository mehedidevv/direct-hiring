import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperProfile/view/otherCerificate_view.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperProfile/widget/childrenBottomSheet_widget.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperProfile/widget/customBottomSheet_widget.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperProfile/widget/educationLevelBottomSheet_widget.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperProfile/widget/marritalBottomSheet_widget.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperProfile/widget/religionBottomSheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/customStyle/custom_size.dart';
import '../../../locationExperience_view/view/addCertificate_view.dart';
import '../widget/customInformation_widget.dart';

class AdditionalInformationView extends StatelessWidget {
   AdditionalInformationView({super.key});

  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'Additional Information',
        leadingIcon: Icons.arrow_back_rounded,
        onLeadingTap: () => Navigator.of(context).pop(),
      ),
      body: SafeArea(

          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [

                heightBox20,

                Divider(
                  thickness: 0.15,
                  color: AppColors.mainTextColor,
                ),


                CustomInformationTile(
                  title: 'Language I can speak',
                  subtitle: 'English',
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      isScrollControlled: true,
                      builder: (context) =>  HelperBottomSheet(),
                    );
                  },
                ),


                Divider(
                  thickness: 0.15,
                  color: AppColors.mainTextColor,
                ),
                heightBox14,

                Divider(
                  thickness: 0.15,
                  color: AppColors.mainTextColor,
                ),
                CustomInformationTile(
                  title: 'Religion',
                  subtitle: 'Muslim',
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      isScrollControlled: true,
                      builder: (context) =>  ReligionBottomSheet(),
                    );
                  },
                ),

                Divider(
                  thickness: 0.15,
                  color: AppColors.mainTextColor,
                ),

                heightBox14,

                CustomInformationTile(
                  title: 'Marital Status',
                  subtitle: 'Married',
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      isScrollControlled: true,
                      builder: (context) =>  MarritalBottomSheet(),
                    );
                  },
                ),

                heightBox14,

                Divider(
                  thickness: 0.15,
                  color: AppColors.mainTextColor,
                ),
                CustomInformationTile(
                  title: 'Number of children',
                  subtitle: '5',
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      isScrollControlled: true,
                      builder: (context) =>  ChildrenBottomSheet(),
                    );
                  },
                ),
                Divider(
                  thickness: 0.15,
                  color: AppColors.mainTextColor,
                ),

                heightBox14,

                Divider(
                  thickness: 0.15,
                  color: AppColors.mainTextColor,
                ),
                CustomInformationTile(
                  title: 'Education Level',
                  subtitle: 'Bachelor',
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      isScrollControlled: true,
                      builder: (context) =>  EducationBottomSheet(),
                    );
                  },
                ),


                heightBox14,

                Divider(
                  thickness: 0.15,
                  color: AppColors.mainTextColor,
                ),

                CustomInformationTile(
                  title: 'Other Certification(s)',
                  subtitle: 'caregiver diploma',
                  onTap: () {

                    Get.to(OtherCertificateView());

                    // showModalBottomSheet(
                    //   context: context,
                    //   shape: const RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    //   ),
                    //   isScrollControlled: true,
                    //   builder: (context) =>  EducationBottomSheet(),
                    // );
                  },
                ),

                Divider(
                  thickness: 0.15,
                  color: AppColors.mainTextColor,
                ),


              ],
            ),
          )),
    );
  }
}


