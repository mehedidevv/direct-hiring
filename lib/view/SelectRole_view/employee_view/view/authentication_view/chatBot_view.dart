import 'package:direct_hiring/res/appColors/App_Colors.dart';
import 'package:direct_hiring/res/appImages/App_images.dart';
import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/homeDashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../res/commonWidget/customRadioButton.dart';
import '../../../../../res/commonWidget/customDropdown_widget.dart';

class ChatbotView extends StatefulWidget {
  const ChatbotView({super.key});

  @override
  _ChatbotViewState createState() => _ChatbotViewState();
}

class _ChatbotViewState extends State<ChatbotView> {
  // Store selected values
  String selectedCommencementDate = 'Within 1 Month';
  String selectedNationality = 'Filipino';
  String mainDuty = '';
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    // List of commencement date options
    final List<String> commencementDates = [
      'ASAP',
      'Within 1 Month',
      'Within 2 Months',
      'Within 3 Months',
      'Anytime',
      'Unsure',
    ];

    // List of nationality options
    final List<String> nationalities = [
      'Filipino',
      'Indonesian',
      'Myanmese',
      'Indian',
      'Sri Lankan',
      'Mizoram',
      'Any',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  // Row For Back Icon And Chat Bot Image
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Back Arrow
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 44,
                          width: 44,
                          decoration: const BoxDecoration(
                            color: Color(0xFFE6F4EA),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back,
                              size: 20,
                              color: Color(0xFF4C4C4C),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      // Chat Bot Image
                      SizedBox(
                        height: 121,
                        width: 121,
                        child: Image.asset(AppImages.chatBot),
                      ),
                      const Spacer(),
                    ],
                  ),


                  heightBox10,


                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 45,
                      width: 181,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:  Color(0xFFE6F4EA),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 16,
                              width: 16,
                              child: Image.asset(AppImages.handRaise),
                            ),
                             CustomText(
                              title: 'Hello',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF8C8C8C),
                            ),
                             CustomText(
                              title: 'Mr. Tan!',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF545454),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),


               heightBox10,

                   CustomText(
                    title: 'Do provide your requirements below!',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF000000),
                    textAlign: TextAlign.center,
                  ),

                  //Date With Drop Down
                   heightBox20,
                   CustomText(
                    title: 'Commencement Date',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF545454),
                  ),
                  heightBox10,
                  CustomDropDown(
                    initialLabelText: selectedCommencementDate,
                    dropdownItems: commencementDates,
                    onItemSelected: (selected) {
                      setState(() {
                        selectedCommencementDate = selected;
                      });
                      print('Selected commencement date: $selected');
                    },
                  ),
                  //===============================================================


                  //Main Duty Text Field
                  heightBox20,
                   CustomText(
                    title: 'Main Duty',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF545454),
                  ),
                  heightBox10,
                  RoundTextField(
                      hint: 'Enter Text Here.....',
                    borderWidth: 1,
                    maxLine: 10,
                    vertical_padding: 5,
                  ),



                  //Preferred Nationality
                  heightBox20,
                   CustomText(
                    title: 'Preferred Nationality',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF545454),
                  ),
                 heightBox10,
                  CustomDropDown(
                    initialLabelText: selectedNationality,
                    dropdownItems: nationalities,
                    onItemSelected: (selected) {
                      setState(() {
                        selectedNationality = selected;
                      });
                      print('Selected nationality: $selected');
                    },
                  ),
                  //===================================================================================


                  //Preferred Age
                  heightBox20,
                  CustomText(
                    title: 'Preferred Age',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF545454),
                  ),
                  heightBox10,

                  Container(
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(10),
                      border:  Border.all(color: Color(0xFF33A954)),
                    ),

                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          CustomText(
                              title: 'Preferred Age',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF545454),
                          ),

                          Divider(),

                          //Custom Radio Button
                          Column(
                            
                            children: [

                            CustomRadioButton(
                            label: "23-30",
                            isSelected: selectedOption == "23-30",
                            onTap: (isSelected) {
                              setState(() {
                                selectedOption = isSelected ? "23-30" : '';
                              });
                            },
                          ),

                              SizedBox(height: 10,),

                              CustomRadioButton(
                                label: "31-40",
                                isSelected: selectedOption == "31-40",
                                onTap: (isSelected) {
                                  setState(() {
                                    selectedOption = isSelected ? "31-40" : '';
                                  });
                                },
                              ),


                              SizedBox(height: 10,),

                              CustomRadioButton(
                                label: "41-50",
                                isSelected: selectedOption == "41-50",
                                onTap: (isSelected) {
                                  setState(() {
                                    selectedOption = isSelected ? "41-50" : '';
                                  });
                                },
                              ),



                            ],
                          )




                        ],
                      ),
                    ),
                  ),



                  heightBox20,
                  CustomText(
                    title: 'Salary for Helper',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF545454),
                  ),
                  heightBox10,

                  RoundTextField(
                      hint: 'Minimum  \$750...  Or',
                    borderWidth: 1,
                  ),

                  heightBox10,

                  RoundTextField(
                    vertical_padding: 10,
                    borderRadius: 12,
                    borderWidth: 1,
                    maxLine: 5,
                    suffixIcon: Icon(Icons.send,color: Colors.grey,),
                    hint: 'Write Something. Here...',
                  ),

                 heightBox20,

                  //Button For Next
                  CustomButton(title: 'Next', onTap: (){
                    //TODO
                    Get.to(HomeDashboardView(initialIndex: 0,));
                  }

                  ),


                 heightBox20,

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}