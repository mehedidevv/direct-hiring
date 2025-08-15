import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  final String label;
  final bool isSelected;
  final ValueChanged<bool> onTap;

  CustomRadioButton({
    required this.label,
    this.isSelected = false,
    required this.onTap,
  });

  @override
  _CustomRadioButtonState createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        widget.onTap(!widget.isSelected);
      },
      child: Row(
        children: [
          // Circular Button
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.isSelected ? Color(0xFF33A954) : Colors.transparent,
              border: Border.all(
                color: widget.isSelected ? Color(0xFF33A954) : Colors.grey,
                width: 2,
              ),
            ),
            child: widget.isSelected
                ? Icon(
              Icons.check,
              size: 14,
              color: Colors.white,
            )
                : null,
          ),
          SizedBox(width: 8),
          // Text Label
          Text(
            widget.label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
