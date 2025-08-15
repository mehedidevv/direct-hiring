import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final bool initialValue;
  final ValueChanged<bool>? onChanged;
  final Color? checkedColor; // Optional, not needed for gradient now

  const CustomCheckbox({
    Key? key,
    this.initialValue = false,
    this.onChanged,
    this.checkedColor,
  }) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  void toggleCheck() {
    setState(() {
      isChecked = !isChecked;
    });
    widget.onChanged?.call(isChecked);
  }

  @override
  Widget build(BuildContext context) {
    final Color borderColor = isChecked ? Colors.transparent : const Color(0xFF000000);

    return GestureDetector(
      onTap: toggleCheck,
      child: Container(
        height: 16,
        width: 16,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
            color: borderColor,
            width: 0.35,
          ),
          gradient: isChecked
              ? const LinearGradient(
            colors: [
              Color(0xFF33A954),
              Color(0xFF002B0A),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
              : null,
          color: isChecked ? null : Colors.white,
        ),
        child: isChecked
            ? const Icon(
          Icons.check,
          color: Colors.white,
          size: 14,
        )
            : null,
      ),
    );
  }
}
