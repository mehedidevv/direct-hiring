import 'package:direct_hiring/res/commonWidget/customAppBar.dart';
import 'package:direct_hiring/res/commonWidget/customButtonTwo.dart';
import 'package:direct_hiring/res/customStyle/custom_size.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../../../../../res/appColors/App_Colors.dart';
import '../../../../../../res/commonWidget/customButton.dart';
import '../../../../../../res/commonWidget/customText.dart';
import '../../../../../../res/common_controller/imagePick_controller.dart';
import '../../../../employee_view/view/profile_view/controller/datePicker_controller.dart';

class PresentationVideoView extends StatefulWidget {
   PresentationVideoView({super.key});

  @override
  State<PresentationVideoView> createState() => _PresentationVideoViewState();
}

class _PresentationVideoViewState extends State<PresentationVideoView> {
  final ImagePickController controller = Get.put(ImagePickController());

  final dateController = Get.put(DatePickerController());

  final _controller = TextEditingController();

  late ImagePicker _imagePicker;

  XFile? _pickedImage;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
    _controller.text = DateFormat('dd-MM-yyyy').format(dateController.selectedDate.value);
  }

  Future<void> _pickImage() async {
    final pickedFile = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _pickedImage = pickedFile;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: 'Presentation Video',
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

            //Add Video Option
            Obx(() => GestureDetector(
              onTap: controller.pickMainImageTwo,
              child: DottedBorder(
                options: RectDottedBorderOptions(
                  color: Colors.green,
                  strokeWidth: 1.5,
                  dashPattern: [6, 3],
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green.shade50,
                  ),
                  child: controller.mainImageTwo.value == null
                      ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.play_circle, size: 30, color: Colors.green),
                      const SizedBox(height: 4),
                      CustomText(
                        title: 'or',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainTextColor,
                      ),

                      const SizedBox(height: 4),
                      CustomText(
                        title: 'Choose File',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.mainTextColor,
                      ),
                    ],
                  )
                      : ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.file(
                      controller.mainImageTwo.value!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
              ),
            )),

            heightBox20,

                CustomText(
                  title: 'Please record a short introduction video',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainTextColor,
                ),

                heightBox14,

                CustomText(
                  title: 'Adding a video to your profile can significantly increase employer interest, helping you stand out and attract more job opportunities. It also allows for better matching by giving employers a clearer understanding of your personality and communication style.',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.mainTextColor,
                ),


                Spacer(),

                Row(
                  children: [
                    Expanded(
                      child: CustomButtonTwo(title: 'Close', onTap: () {
                        Navigator.of(context).pop();
                      }),
                    ),

                    widthBox10,
                    Expanded(
                      child: CustomButton(title: 'Upload', onTap: () {
                        Navigator.of(context).pop();
                      }),
                    )
                  ],
                ),

                heightBox50,

              ]),
        ),
      ),
    );
  }
}
