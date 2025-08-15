import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:flutter/material.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/appImages/App_images.dart';
import '../../helperHome/widget/customProfile_widget.dart';
import '../widget/selectableProfileTile_widget.dart';

class HelperPointsView extends StatefulWidget {
   HelperPointsView({super.key});

  @override
  State<HelperPointsView> createState() => _HelperPointsViewState();
}

class _HelperPointsViewState extends State<HelperPointsView> {
  final List<Map<String, String>> profiles = [
    {'name': 'John Doe', 'image': AppImages.profileOne},
    {'name': 'Alice', 'image': AppImages.favImg1},
    {'name': 'Mark', 'image': AppImages.favImg2},
    {'name': 'Sophia', 'image': AppImages.favImg3},
    {'name': 'John Doe', 'image': AppImages.profileOne},
    {'name': 'Alice', 'image': AppImages.profileOne},
    {'name': 'Mark', 'image': AppImages.profileOne},
    {'name': 'Sophia', 'image': AppImages.profileOne},
  ];

  List<Map<String, dynamic>> profilesCheck = [
    {
      'name': 'Addai',
      'image': AppImages.profileOne,
      'isSelected': false,
    },
    {
      'name': 'Emma',
      'image': AppImages.favImg1,
      'isSelected': false,
    },
    {
      'name': 'Rahim',
      'image': AppImages.favImg2,
      'isSelected': false,
    },
    {
      'name': 'Addai',
      'image': AppImages.profileOne,
      'isSelected': false,
    },
    {
      'name': 'Emma',
      'image': AppImages.favImg1,
      'isSelected': false,
    },
    {
      'name': 'Rahim',
      'image': AppImages.favImg2,
      'isSelected': false,
    },
  ];
   bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              
                  //Profile Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
              
                      Column(
                        children: [
              
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(AppImages.profileOne),
                          ),
                          heightBox5,
                          CustomText(
                              title: 'Emma',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColors.mainTextColor
                          )
                        ],
                      ),
              
                      Row(
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(AppImages.coin),
                          ),
                          widthBox10,
                          CustomText(
                            title: '10 Points',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor,
                          )
                        ],
                      )
              
              
                    ],
                  ),
              
                  heightBox10,
                  const Divider(
                    thickness: 1,
                    color: Color(0XFFD9D9D9),
                  ),
                  heightBox10,
              
                  // Title for the profile list
                  CustomText(
                    title: 'Your contacts are using Direct Hiring',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
              
                  heightBox14,
              
                  // Horizontal List of ProfileWidgets
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: profiles.length,
                      itemBuilder: (context, index) {
                        final profile = profiles[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: ProfileWidget(
                            name: profile['name'] ?? '',
                            imagePath: profile['image'] ?? '',
                          ),
                        );
                      },
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color(0XFFD9D9D9),
                  ),
              
                  heightBox14,
              
                  Center(
                    child: CustomText(
                      title: 'Referred Friends',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    ),
                  ),
              
                  heightBox10,
                  Center(
                    child: CustomText(
                      title: 'You must select a minimum of five (5) \n'
                          'of your contacts',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainTextColor,
                      textAlign: TextAlign.center,
                    ),
                  ),
              
                  heightBox14,
              
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: profilesCheck.length,
                    itemBuilder: (context, index) {
                      final profile = profilesCheck[index];
                      return SelectableProfileTile(
                        name: profile['name'],
                        imagePath: profile['image'],
                        isSelected: profile['isSelected'],
                        onTap: () {
                          setState(() {
                            profilesCheck[index]['isSelected'] = !profile['isSelected'];
                          });
                        },
                      );
                    },
                  ),
              
                  heightBox20,
                  CustomButton(title: 'Send', onTap: (){}),

                  heightBox30
              
              
              
              
              
              
              
              
                ],
              ),
            ),
          ))
    );
  }
}
