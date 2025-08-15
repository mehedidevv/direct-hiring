import 'package:direct_hiring/res/commonWidget/customButtonTwo.dart';
import 'package:flutter/material.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/customStyle/custom_size.dart';
import '../../../question_view/widget/customSelectableContainer_widget.dart';

class ChildrenBottomSheet extends StatefulWidget {
  ChildrenBottomSheet({super.key});

  @override
  State<ChildrenBottomSheet> createState() => _ChildrenBottomSheetState();
}

class _ChildrenBottomSheetState extends State<ChildrenBottomSheet> {
  String selectedChildren = '0';

  final List<String> childrenList = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',

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
                title: 'Please indicate the number of children you have?',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.mainTextColor,
              ),

              heightBox14,

              // Language List
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: childrenList.length,
                  itemBuilder: (context, index) {
                    final lang = childrenList[index];
                    return CustomSelectableContainer(
                      text: lang,
                      isSelected: selectedChildren == lang,
                      onTap: () {
                        setState(() {
                          selectedChildren = lang;
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
