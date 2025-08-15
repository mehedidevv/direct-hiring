import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonTwo.dart';
import 'package:direct_hiring/res/commonWidget/customCheckBox_widget.dart';
import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:flutter/material.dart';

class DeleteAccountWidget extends StatelessWidget {
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const DeleteAccountWidget({
    Key? key,
    required this.onConfirm,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {




    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Icon Circle
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFE6F4EA),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(12),
                child: Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 32,
                ),
              ),
             heightBox14,
              // Title
              CustomText(
                title:  'Why Are you Deleting?',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0XFF232323),
              ),
              heightBox10,
              // Message
              Row(
                children: [

                  CustomCheckbox(
                    initialValue: false,
                    onChanged: (bool value) {
                      print("Checkbox is now: $value");
                    },
                  ),

                  widthBox20,

                  CustomText(
                    title: 'Tokens are too expensive',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF010101).withOpacity(0.6),

                  ),



                ],
              ),
              heightBox8,
              Row(
                children: [

                  CustomCheckbox(
                    initialValue: false,
                    onChanged: (bool value) {
                      print("Checkbox is now: $value");
                    },
                  ),

                  widthBox20,

                  CustomText(
                    title: 'Found a Helper elsewhere',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF010101).withOpacity(0.6),

                  ),



                ],
              ),
              heightBox8,
              Row(
                children: [

                  CustomCheckbox(
                    initialValue: false,
                    onChanged: (bool value) {
                      print("Checkbox is now: $value");
                    },
                  ),

                  widthBox20,

                  CustomText(
                    title: 'Already Matched with a Helper',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF010101).withOpacity(0.6),

                  ),



                ],
              ),
              heightBox8,
              Row(
                children: [

                  CustomCheckbox(
                    initialValue: false,
                    onChanged: (bool value) {
                      print("Checkbox is now: $value");
                    },
                  ),

                  widthBox20,

                  CustomText(
                    title: 'Temporary Deactivation',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF010101).withOpacity(0.6),

                  ),



                ],
              ),
              heightBox8,
              Row(
                children: [

                  CustomCheckbox(
                    initialValue: false,
                    onChanged: (bool value) {
                      print("Checkbox is now: $value");
                    },
                  ),

                  widthBox20,

                  CustomText(
                    title: 'Prefer Not to Say',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF010101).withOpacity(0.6),

                  ),



                ],
              ),


              const SizedBox(height: 24),
              // Buttons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomButtonTwo(
                      height: 45,
                      title: 'No',
                      onTap: ()=>Navigator.of(context).pop(),),
                  ),
                  widthBox14,

                  Expanded(
                    child: CustomButton(
                      height: 45,
                      title: 'Yes',
                      onTap: ()=>Navigator.of(context).pop(),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
