import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:flutter/material.dart';

class CustomCircleCheckBoxWidget extends StatefulWidget {
  final String text;
  final bool initialValue;
  final ValueChanged<bool> onChanged;

  const CustomCircleCheckBoxWidget({
    Key? key,
    required this.text,
    this.initialValue = false,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomCircleCheckBoxWidget> createState() => _CustomCircleCheckBoxWidgetState();
}

class _CustomCircleCheckBoxWidgetState extends State<CustomCircleCheckBoxWidget> {
  late bool isChecked;

  @override
  void initState() {
    super.initState();
    isChecked = widget.initialValue;
  }

  void _toggle() {
    setState(() {
      isChecked = !isChecked;
    });
    widget.onChanged(isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _toggle,
      borderRadius: BorderRadius.circular(20),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isChecked ? Colors.green : Colors.white,
              border: Border.all(color: Colors.green, width: 2),
            ),
            child: isChecked
                ? Icon(Icons.check, size: 16, color: Colors.white)
                : null,
          ),
          SizedBox(width: 8),
          CustomText(
           title:  widget.text,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF767676),
          ),
        ],
      ),
    );
  }
}
