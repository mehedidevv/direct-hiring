import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:flutter/material.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/customStyle/custom_size.dart';
import '../widget/yourJobBottomSheet_widget.dart';

class JobScopeView extends StatelessWidget {
  const JobScopeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'Job Scope',
        leadingIcon: Icons.arrow_back_rounded,
        onLeadingTap: () => Navigator.of(context).pop(),
      ),

      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                heightBox20,

                GestureDetector(
                  onTap: (){
                    print('Customize Your Job Scope');
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                        ),
                        isScrollControlled: true,
                        builder: (context) =>  YourJobBottomSheet(),
                      );
                    },

                  child: CustomText(
                    title: 'Customize Your Job Scope',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.mainTextColor,
                  ),
                ),

                heightBox10,
                CustomText(
                  title: 'I would like to take care of',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.mainTextColor,
                ),


                heightBox20,

                CustomText(
                  title: 'Babies below 18 months',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainTextColor,
                ),
                CustomText(
                  title: 'Newborn under 6 months old',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainTextColor,
                ),
                CustomText(
                  title: 'Toddlers',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainTextColor,
                ),
                CustomText(
                  title: 'Children above 3 years old',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainTextColor,
                ),

                CustomText(
                  title: 'Elderly people',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainTextColor,
                ),
                CustomText(
                  title: 'Persons with special needs',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainTextColor,
                ),

                CustomText(
                  title: 'Dogs',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainTextColor,
                ),
                CustomText(
                  title: 'Cats',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainTextColor,
                ),
                CustomText(
                  title: 'Cleaning',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainTextColor,
                ),

                heightBox10,
                Divider(
                  color: AppColors.mainTextColor,
                  thickness: 0.5,
                ),
              ],
            ),
          )),
    );
  }
}
