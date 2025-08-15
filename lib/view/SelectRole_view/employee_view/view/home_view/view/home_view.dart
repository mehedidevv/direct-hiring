import 'package:direct_hiring/view/SelectRole_view/employee_view/view/home_view/view/homeCardDetails_view.dart';
import 'package:flutter/material.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:direct_hiring/view/SelectRole_view/employee_view/view/home_view/widget/homeHeader_widget.dart';
import '../../../../../../res/commonWidget/alertDialog_widget.dart';
import '../widget/singleProfile_widget.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<int> dummyData = List.generate(8, (index) => index);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header
            CustomHeader(),
            heightBox20,

            // ListView with 2 items per row
            Expanded(
              child: ListView.builder(
                itemCount: (dummyData.length / 2).ceil(),
                itemBuilder: (context, index) {
                  int firstIndex = index * 2;
                  int secondIndex = firstIndex + 1;

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12, left: 10, right: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: SingleProfileWidget(
                            onTapCard: ()=>Get.to(HomeCardDetailsView()),
                            onTapContact: () {
                              _showCustomDialog(context);
                            },
                          ),
                        ),
                        const SizedBox(width: 12),
                        if (secondIndex < dummyData.length)
                          Expanded(
                            child: SingleProfileWidget(
                              onTapCard: ()=>Get.to(HomeCardDetailsView()),
                              onTapContact: () {
                                _showCustomDialog(context);
                              },
                            ),
                          )

                      ],
                    ),
                  );
                },
              ),

            ),
          ],
        ),
      ),
    );
  }

  // Function to show custom AlertDialog
  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialogWidget();
      },
    );
  }


}
