import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/view/helperProfile/widget/addDishBottomSheet.dart';
import 'package:flutter/material.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/customStyle/custom_size.dart';

class FoodView extends StatelessWidget {
  const FoodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Food View",
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
              CustomText(
                title: 'Customize Your Food & Cooking Details',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.mainTextColor,
              ),

            heightBox10,

            CustomText(
              title: 'What kind of food do you eat?',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.mainTextColor,
            ),

              heightBox10,

              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20)),
                    ),
                    isScrollControlled: true,
                    builder: (context) => DishBottomSheet(),
                  );

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    CustomText(
                      title: 'Fish',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainTextColor,
                    ),

                    Icon(Icons.arrow_forward_ios, color: AppColors.mainTextColor,size: 16,)

                  ],
                ),
              ),
              heightBox10,


              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20)),
                    ),
                    isScrollControlled: true,
                    builder: (context) => DishBottomSheet(),
                  );


                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    CustomText(
                      title: 'Chicken',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainTextColor,
                    ),

                    Icon(Icons.arrow_forward_ios, color: AppColors.mainTextColor,size: 16,)

                  ],
                ),
              ),
              heightBox10,


              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20)),
                    ),
                    isScrollControlled: true,
                    builder: (context) => DishBottomSheet(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    CustomText(
                      title: 'Beef',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainTextColor,
                    ),

                    Icon(Icons.arrow_forward_ios, color: AppColors.mainTextColor,size: 16,)

                  ],
                ),
              ),

              heightBox10,

              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20)),
                    ),
                    isScrollControlled: true,
                    builder: (context) => DishBottomSheet(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    CustomText(
                      title: 'Vegetables ',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainTextColor,
                    ),

                    Icon(Icons.arrow_forward_ios, color: AppColors.mainTextColor,size: 16,)

                  ],
                ),
              ),
              heightBox10,


              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20)),
                    ),
                    isScrollControlled: true,
                    builder: (context) => DishBottomSheet(),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    CustomText(
                      title: 'Pork ',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainTextColor,
                    ),

                    Icon(Icons.arrow_forward_ios, color: AppColors.mainTextColor,size: 16,)

                  ],
                ),
              ),

              heightBox10,
              Divider(
                thickness: 0.5,
              ),

              heightBox10,

              CustomText(
                title: 'List Of Dishes you can Cook',
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.mainTextColor,
              ),

              heightBox14,
              CustomText(
                title: 'Dish1',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),

              heightBox10,

              CustomText(
                title: 'Dish2 ',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),


              heightBox10,
              CustomText(
                title: 'Dish3 ',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),

              heightBox10,

              CustomText(
                title: 'Dish4 ',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),
              heightBox10,



            ],
          ),
        ),
      ),
    );
  }
}
