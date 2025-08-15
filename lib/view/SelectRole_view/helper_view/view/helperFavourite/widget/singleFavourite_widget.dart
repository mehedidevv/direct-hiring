import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:flutter/material.dart';

import '../../../../../../res/appColors/App_Colors.dart';

class SingleFavouriteWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String subtitle;
  final String status;
  final String smallAvatarUrl;
  final VoidCallback onMessageTap;

  const SingleFavouriteWidget({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.subtitle,
    required this.status,
    required this.smallAvatarUrl,
    required this.onMessageTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 2,
      margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Profile image
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),


            const SizedBox(width: 16),

            /// Name, Subtitle, Status and Small Avatar
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      title: name,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    color: AppColors.mainTextColor,
                  ),


                  const SizedBox(height: 4),
                  CustomText(
                    title: subtitle,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.mainTextColor,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),



                  const SizedBox(height: 4),
                  Row(
                    children: [

                      CustomText(
                        title: "Status: ",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainTextColor,
                      ),

                      CustomText(
                        title: "Transfer",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Row(
                    children: [

                      CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage(smallAvatarUrl),
                      ),


                      widthBox10,
                      CustomText(
                        title: "Emma",
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainTextColor,
                      ),
                    ],
                  ),


                ],
              ),
            ),

            GestureDetector(
              onTap: onMessageTap,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                height: 30,
                decoration: BoxDecoration(
                  gradient: AppColors.primaryGradient,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: CustomText(
                    title: 'Message',
                  fontSize: 14,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w500,
                ),),
              ),
            )
            /// Message Button
            // ElevatedButton(
            //   onPressed: onMessageTap,
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.green,
            //     padding: const EdgeInsets.symmetric(horizontal: 10),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //   ),
            //   child: const Text("Message",
            //       style: TextStyle(color: Colors.white)),
            // )
          ],
        ),
      ),
    );
  }
}
