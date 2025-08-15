import 'package:direct_hiring/res/commonWidget/customButtonTwo.dart';
import 'package:flutter/material.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/customStyle/custom_size.dart';
import '../../../question_view/widget/customSelectableContainer_widget.dart';

class EducationBottomSheet extends StatefulWidget {
  EducationBottomSheet({super.key});

  @override
  State<EducationBottomSheet> createState() => _EducationBottomSheetState();
}

class _EducationBottomSheetState extends State<EducationBottomSheet> {
  String selectedEducation = 'Primary School';

  final List<String> educationList = [
    'Primary School',
    'Secondary School',
    'University/College',
    'Bachelor',
    'Master',

  ];

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.4,
      maxChildSize: 0.95,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            children: [
              // Top indicator
              Center(
                child: Container(
                  width: 40,
                  height: 5,
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              // Title
              CustomText(
                title: 'What is your highest level of education?',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),

              heightBox14,

              // Language List
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: educationList.length,
                  itemBuilder: (context, index) {
                    final lang = educationList[index];
                    return CustomSelectableContainer(
                      text: lang,
                      isSelected: selectedEducation == lang,
                      onTap: () {
                        setState(() {
                          selectedEducation = lang;
                        });
                      },
                    );
                  },
                ),
              ),

              // Buttons
              SafeArea(
                top: false,
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButtonTwo(
                        title: 'Cancel',
                        onTap: () {
                          Navigator.pop(context);
                        },
                        isLoading: false,
                        height: 45,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: CustomButton(
                        title: 'Save',
                        onTap: () {
                          Navigator.pop(context);
                          // You can also pass the selectedLanguage back here
                        },
                        isLoading: false,
                        height: 45,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
