import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../res/appImages/App_images.dart';
import '../../../../res/commonWidget/customText.dart';
import 'helpDescriptionWidget.dart';

class Helpwidget extends StatelessWidget {
  const Helpwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [


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

                  FaqCard(
                    title: "What types of housekeeping services are available?",
                    description:
                    "We offer a range of services, including regular cleaning, deep cleaning, laundry assistance, carpet cleaning, and kitchen ...",
                 onTap: (){
                      //On Tab Method
                   Get.to(() =>  HelpDescriptionwidget());
                 },
                  ),


                  FaqCard(
                    title: "What types of housekeeping services are available?",
                    description:
                    "We offer a range of services, including regular cleaning, deep cleaning, laundry assistance, carpet cleaning, and kitchen ...",
                  ),


                  FaqCard(
                    title: "What types of housekeeping services are available?",
                    description:
                    "We offer a range of services, including regular cleaning, deep cleaning, laundry assistance, carpet cleaning, and kitchen ...",
                  ),


                  FaqCard(
                    title: "What types of housekeeping services are available?",
                    description:
                    "We offer a range of services, including regular cleaning, deep cleaning, laundry assistance, carpet cleaning, and kitchen ...",
                  ),

                  FaqCard(
                    title: "What types of housekeeping services are available?",
                    description:
                    "We offer a range of services, including regular cleaning, deep cleaning, laundry assistance, carpet cleaning, and kitchen ...",
                  ),






                ],
              ),
            ),
          ),)
        ,),
    );
  }
}




class FaqCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTap; // <-- Tap callback (optional)

  const FaqCard({
    super.key,
    required this.title,
    required this.description,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // trigger if provided
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          color: const Color(0xFFE6F4EA),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fixed Icon
            SizedBox(
              height: 23,
              width: 23,
              child: Image.asset(AppImages.helpIcon),
            ),
            const SizedBox(width: 12),

            // Text Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title: title,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0XFF000000),
                    letterSpacing: 0.2,
                  ),
                  const SizedBox(height: 3),
                  CustomText(
                    title: description,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF4C4C4C),
                    letterSpacing: 0.2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

