import 'package:flutter/material.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/commonWidget/customText.dart';

//Header Part
class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: Color(0XFFE6F4EA),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        border: Border.all(width: 1, color: Color(0XFFEEEEEE)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Profile Picture
              const CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=47',
                ),
              ),
              const SizedBox(width: 12),
              // Greeting Text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    title: 'HELLO!',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0XFFB0B0B0),
                  ),
                  CustomText(
                    title: 'Mr. Tan!',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF2E2E2E),
                  ),
                ],
              ),
              const Spacer(),

              // Notification Icon
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0XFFE6F4EA),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
                ),
                padding: const EdgeInsets.all(10),
                child: const Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Refresh Button
          Container(
            height: height*.09,
            decoration: BoxDecoration(
              color: AppColors.buttonColor,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(width: 1, color: Color(0XFFB0DEBD)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Left Side: Refresh Text
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        title: 'REFRESH',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.2,
                        color: Color(0XFFFFFFFF),
                      ),
                      CustomText(
                        title: '5 Token',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.2,
                        color: Color(0XFFFFFFFF),
                      ),
                    ],
                  ),
                ),

                // Right Side: Boxes
                Container(
                  height: double.infinity,
                  width: width*0.4,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFFFFFF).withOpacity(0.6),
                        // semi-transparent white
                        const Color(0xFF33A954),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(width: 1, color: Color(0XFFB0DEBD)),
                  ),

                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                    child: Row(
                      children: [

                        Expanded(
                          child: Container(
                            height:height*.1,
                            width: width*.2,
                            decoration: BoxDecoration(
                                color: Color(0XFFE6F4EA),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    title: '24',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w900,
                                    color: AppColors.primaryColor,
                                  ),

                                  CustomText(
                                    title: 'HOURS',
                                    fontSize: 7,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryColor,
                                  ),


                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 5,),


                        Expanded(
                          child: Container(
                            height:height*.1,
                            width: width*.2,
                            decoration: BoxDecoration(
                                color: Color(0XFFE6F4EA),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    title: '60',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w900,
                                    color: AppColors.primaryColor,
                                  ),

                                  CustomText(
                                    title: 'MINUTES',
                                    fontSize: 7,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryColor,
                                  ),


                                ],
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 5,),
                        Expanded(
                          child: Container(
                            height:height*.1,
                            width: width*.2,
                            decoration: BoxDecoration(
                                color: Color(0XFFE6F4EA),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    title: '60',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w900,
                                    color: AppColors.primaryColor,
                                  ),

                                  CustomText(
                                    title: 'SECONDS',
                                    fontSize: 7,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primaryColor,
                                  ),


                                ],
                              ),
                            ),
                          ),
                        )



                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}