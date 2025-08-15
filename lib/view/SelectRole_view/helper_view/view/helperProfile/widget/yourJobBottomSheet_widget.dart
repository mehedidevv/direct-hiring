import 'package:direct_hiring/res/commonWidget/customButtonTwo.dart';
import 'package:flutter/material.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/customStyle/custom_size.dart';
import '../../../question_view/widget/customSelectableContainer_widget.dart';

class YourJobBottomSheet extends StatefulWidget {
  YourJobBottomSheet({super.key});

  @override
  State<YourJobBottomSheet> createState() => _YourJobBottomSheetState();
}

class _YourJobBottomSheetState extends State<YourJobBottomSheet> {
  // Multiple selection list
  List<String> selectedJobs = [];

  final List<String> jobList = [
    'Babies below 18 months',
    'Newborn under 6 months old',
    'Toddlers',
    'Children above 3 years old',
    'Elderly people',
    'Persons with special needs',
    'Dogs',
    'Cats',
    'Cleaning',
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
              /// Top indicator
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

              /// Title
              CustomText(
                title: 'Please select the type(s) of job you’re willing to do.',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),

              heightBox14,

              /// List with multi-select support
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: jobList.length,
                  itemBuilder: (context, index) {
                    final job = jobList[index];
                    final isSelected = selectedJobs.contains(job);

                    return CustomSelectableContainer(
                      text: job,
                      isSelected: isSelected,
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedJobs.remove(job);
                          } else {
                            selectedJobs.add(job);
                          }
                        });
                      },
                    );
                  },
                ),
              ),

              /// Buttons
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
                          Navigator.pop(context, selectedJobs); // Return selected jobs
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

