
import 'package:flutter/material.dart';

import '../../../../res/appColors/App_Colors.dart';
import '../../../../res/appImages/App_images.dart';
import '../../../../res/appString/appString.dart';
import '../../../../res/commonWidget/customText.dart';

class HelpDescriptionwidget extends StatefulWidget {
   HelpDescriptionwidget({super.key});

  @override
  State<HelpDescriptionwidget> createState() => _HelpDescriptionwidgetState();
}

class _HelpDescriptionwidgetState extends State<HelpDescriptionwidget> {
  String selectedTab = "Chat";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child: Column(
                  children: [

                    Container(
                      child: Row(
                        children: [
                          //Back Icon
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: CircleAvatar(
                              backgroundColor: const Color(0xFFE6F4EA),
                              radius: 25,
                              child: const Icon(Icons.arrow_back, color: Color(0xFF4C4C4C)),
                            ),
                          ),

                          const SizedBox(width: 12),

                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _tabButton("Chat", isActive: selectedTab == "Chat"),
                                const SizedBox(width: 10),
                                _tabButton("Help", isActive: selectedTab == "Help"),
                              ],
                            ),
                          ),

                          const SizedBox(width: 36),
                        ],
                      ),
                    ),

                    SizedBox(height: 20,),

                    
                    Align(
                      alignment: Alignment.center,
                      child: CustomText(
                        title: 'Most Frequently Asked Questions',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF545454),
                        letterSpacing: 0.2,
                      ),
                    ),

                    SizedBox(height: 10,),

                    Divider(
                      color: Color(0XFFB0B0B0),
                      thickness: 1,
                    ),
                    
                    SizedBox(height: 20,),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        SizedBox(
                          height: 24,
                          width: 24,
                          child: Image.asset(AppImages.helpIcon),
                        ),

                        SizedBox(width: 15),

                        Expanded(
                          child: CustomText(
                              title: 'What types of housekeeping services are available',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0XFF000000),
                          
                          ),
                        )
                      ],
                    ),

                    SizedBox(height: 15,),

                    CustomText(
                      title: AppString.helpDescription,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF4C4C4C),

                    ),


                  ],
                ),
              ),
            ),
          ),)
        ,),
    );
  }

  /// Tab Button
  Widget _tabButton(String title, {required bool isActive}) {
    String iconPath = title == "Chat"
        ? AppImages.chatIcon
        : AppImages.helpIcon;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = title;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF33A854)),
          borderRadius: BorderRadius.circular(8),
          color: isActive ? const Color(0xFF33A854) : Colors.transparent,
        ),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              height: 20,
              width: 20,
              color: isActive ? Colors.white : AppColors.primaryColor,
            ),
            const SizedBox(width: 4),
            CustomText(
              title: title,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.2,
              color: isActive ? Colors.white : AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
