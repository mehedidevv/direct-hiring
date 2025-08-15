// .dart
import 'package:flutter/material.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/customStyle/custom_size.dart';

class TermsConditionWidget extends StatelessWidget {
  const TermsConditionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          heightBox30,

          CustomText(
            title: 'Terms & Conditions',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF4C4C4C),
          ),
          heightBox14,

          CustomText(
            title: terms,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF4C4C4C),
          ),
          CustomText(
            title: terms,
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF4C4C4C),
          ),
        ],
      ),
    );
  }

  final String terms = 'Lorem ipsum dolor sit amet consectetur. Ultrices id feugiat venenatis habitant mattis viverra elementum purus volutpat. Lacus eu molestie pulvinar rhoncus integer proin elementum. Pretium sit fringilla massa tristique aenean commodo leo. Aliquet viverra amet sit porta elementum et pellentesque posuere. Ullamcorper viverra tortor lobortis viverra auctor egestas. Nulla condimentum ac metus quam turpis gravida ut velit. Porta justo lacus consequat sed platea. Ut dui massa quam elit faucibus consectetur sapien aenean auctor. Felis ipsum amet justo in. Netus amet in egestas sed auctor lorem. Justo ullamcorper velit habitasse lorem eu arcu. Non enim a elit urna eget nibh quisque donec condimentum. Elit ut pellentesque neque in quis at viverra. Nisl etiam tristique odio eget convallis.';

}
