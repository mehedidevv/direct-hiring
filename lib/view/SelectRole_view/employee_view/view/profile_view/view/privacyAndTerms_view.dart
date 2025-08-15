import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:flutter/material.dart';
import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/commonWidget/customAppBar.dart';
import '../widget/privacyPolicy_widget.dart';
import '../widget/termsAndCondition_widget.dart';

class PrivacyAndTermsView extends StatefulWidget {
  final int selectedTab; // Accept selected tab

  const PrivacyAndTermsView({super.key, required this.selectedTab});

  @override
  State<PrivacyAndTermsView> createState() => _PrivacyAndTermsViewState();
}

class _PrivacyAndTermsViewState extends State<PrivacyAndTermsView> {
  late int selectedTab; // Declare late to assign in initState

  @override
  void initState() {
    super.initState();
    selectedTab = widget.selectedTab;
  }

  void _changeTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  Widget _getSelectedWidget() {
    return selectedTab == 0 ? const PrivacyPolicyWidget() : const TermsConditionWidget();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        leadingIcon: Icons.arrow_back,
        onLeadingTap: () => Navigator.of(context).pop(),
        title: 'Settings',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              /// Tab Switcher
              Container(
                padding: const EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: AppColors.primaryGradient,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    /// Privacy Tab
                    GestureDetector(
                      onTap: () => _changeTab(0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomText(
                            title: 'Privacy & Policy',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: selectedTab == 0 ? Colors.white : Colors.grey[300]!,
                          ),
                          const SizedBox(height: 4),
                          if (selectedTab == 0)
                            Container(
                              height: 2,
                              width: 100,
                              color: Colors.white,
                            ),
                        ],
                      ),
                    ),

                    /// Terms Tab
                    GestureDetector(
                      onTap: () => _changeTab(1),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomText(
                            title: 'Term & Condition',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: selectedTab == 1 ? Colors.white : Colors.grey[300]!,
                          ),
                          const SizedBox(height: 4),
                          if (selectedTab == 1)
                            Container(
                              height: 2,
                              width: 100,
                              color: Colors.white,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// Render Widget Dynamically
              _getSelectedWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
