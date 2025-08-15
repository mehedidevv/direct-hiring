import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:intl/intl.dart';

import '../../view/SelectRole_view/employee_view/view/profile_view/controller/datePicker_controller.dart';
import '../appColors/App_Colors.dart';
import 'RoundTextField.dart';

class CustomDatePicker extends StatelessWidget {
  final DatePickerController dateController;
  final TextEditingController textController;

  const CustomDatePicker({
    Key? key,
    required this.dateController,
    required this.textController,
  }) : super(key: key);

  Future<void> _showCalendarDialog(BuildContext context) async {
    // Calculate the last day of the current month
    DateTime now = DateTime.now();
    DateTime lastDayOfMonth = DateTime(now.year, now.month + 1, 0);

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: dateController.selectedDate.value,
      firstDate: DateTime(1900),
      lastDate: lastDayOfMonth,
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.primaryColor,
              onPrimary: Colors.white,
              surface: Colors.white,
              onSurface: Colors.black,
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      dateController.setDate(picked);
      textController.text = DateFormat('dd-MM-yyyy').format(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GestureDetector(
        onTap: () => _showCalendarDialog(context),
        child: AbsorbPointer(
          child: RoundTextField(
            controller: textController,
            hint: DateFormat(
              'dd-MM-yyyy',
            ).format(dateController.selectedDate.value),
            readOnly: true,
            suffixIcon:  Icon(
              Icons.calendar_month,
              color: Color(0xFF4C4C4C),
            ),
          ),
        ),
      );
    });
  }
}
