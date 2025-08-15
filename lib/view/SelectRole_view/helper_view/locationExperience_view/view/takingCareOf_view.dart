import 'package:direct_hiring/res/commonWidget/RoundTextField.dart';
import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButton.dart';
import 'package:direct_hiring/res/commonWidget/customButtonWithArrow.dart';
import 'package:direct_hiring/view/SelectRole_view/helper_view/locationExperience_view/view/foodtoCooking_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../res/appColors/App_Colors.dart';
import '../../../../../res/commonWidget/customText.dart';
import '../../../../../res/customStyle/custom_size.dart';
import '../../question_view/widget/customSelectableContainer_widget.dart';

class TakingCareOfView extends StatefulWidget {
  const TakingCareOfView({super.key});

  @override
  State<TakingCareOfView> createState() => _TakingCareOfViewState();
}

class _TakingCareOfViewState extends State<TakingCareOfView> {
  String selectedStatus = 'Yes';
  String selectedStatusTwo = 'Yes';
  String selectedStatusThree = 'Yes';
  String selectedStatusFour = 'Yes';
  String selectedStatusFive = 'Yes';
  String selectedStatusSix = 'Yes';
  String selectedStatusSeven = 'Yes';
  String selectedStatusEight = 'Yes';
  String selectedStatusNine = 'Yes';
  String selectedStatusTen = 'Yes';

  final List<String> yesNoOptions = ['Yes', 'No'];

  Widget _buildQuestion({
    required String question,
    required String selectedValue,
    required Function(String) onSelect,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: question,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.mainTextColor,
        ),
        ListView.builder(
          itemCount: yesNoOptions.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final option = yesNoOptions[index];
            return CustomSelectableContainer(
              text: option,
              isSelected: selectedValue == option,
              onTap: () => onSelect(option),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Taking Care Of',
        leadingIcon: Icons.arrow_back,
        onLeadingTap: () => Navigator.pop(context),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heightBox20,

              _buildQuestion(
                question: 'Are you comfortable caring for newborn under 6 months old?',
                selectedValue: selectedStatus,
                onSelect: (val) => setState(() => selectedStatus = val),
              ),
              _buildQuestion(
                question: 'Are you comfortable caring for infant from 6 months old to 24 months old?',
                selectedValue: selectedStatusTwo,
                onSelect: (val) => setState(() => selectedStatusTwo = val),
              ),
              _buildQuestion(
                question: 'Are you comfortable caring for children aged 2 and above?',
                selectedValue: selectedStatusThree,
                onSelect: (val) => setState(() => selectedStatusThree = val),
              ),
              _buildQuestion(
                question: 'Are you comfortable caring for elderly?',
                selectedValue: selectedStatusFour,
                onSelect: (val) => setState(() => selectedStatusFour = val),
              ),
              _buildQuestion(
                question: 'Are you comfortable caring for elderly with disabilities (eg. Stroke Patient, Wheelchair-Bound Elderly)?',
                selectedValue: selectedStatusFive,
                onSelect: (val) => setState(() => selectedStatusFive = val),
              ),

              _buildQuestion(
                question: 'Are you comfortable caring for individuals with special needs (Eg. Autism, Down Syndrome, ADHD...)?',
                selectedValue: selectedStatusSix,
                onSelect: (val) => setState(() => selectedStatusSix = val),
              ),

              _buildQuestion(
                question: 'Are you comfortable taking care of pets (Eg. Cat, Fishes, Hamsters, Birds...)?',
                selectedValue: selectedStatusSeven,
                onSelect: (val) => setState(() => selectedStatusSeven = val),
              ),

              _buildQuestion(
                question: 'Are you comfortable taking care of dogs?',
                selectedValue: selectedStatusEight,
                onSelect: (val) => setState(() => selectedStatusEight = val),
              ),

              _buildQuestion(
                question: 'Are you comfortable to assist with gardening duties?',
                selectedValue: selectedStatusNine,
                onSelect: (val) => setState(() => selectedStatusNine = val),
              ),
              _buildQuestion(
                question: 'Are you comfortable handling general household chores?',
                selectedValue: selectedStatusTen,
                onSelect: (val) => setState(() => selectedStatusTen = val),
              ),

              CustomButtonWithArrow(
                title: 'Next',
                onTap: () {
                  // Handle next
                   Get.to(FoodToCookingView());
                },
              ),

              heightBox50,
            ],
          ),
        ),
      ),
    );
  }
}
