import 'package:direct_hiring/res/commonWidget/customText.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final String initialLabelText;
  final List<String> dropdownItems;
  final ValueChanged<String>? onItemSelected;

  const CustomDropDown({
    super.key,
    required this.initialLabelText,
    required this.dropdownItems,
    this.onItemSelected,
  });

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  late String _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.initialLabelText; // Initialize with the provided text
  }

  // Function to show the dropdown menu
  void _showDropdownMenu(BuildContext context) async {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    final Size size = renderBox.size;

    final String? selected = await showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
        offset.dx,
        offset.dy + size.height, // Position below the text field
        offset.dx + size.width,
        offset.dy,
      ),
      items: widget.dropdownItems.map((String item) {
        return PopupMenuItem<String>(
          value: item,
          child: CustomText(
            title: item,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF767676),
          ),
        );
      }).toList(),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      elevation: 4,
    );

    if (selected != null) {
      setState(() {
        _selectedItem = selected; // Update the displayed text
      });
      if (widget.onItemSelected != null) {
        widget.onItemSelected!(selected); // Notify parent
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _showDropdownMenu(context);
      },
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border:  Border.all(color: Color(0xFF33A954)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Display the selected item
            CustomText(
              title: _selectedItem, // Show the selected item
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF767676),
            ),

            const Spacer(),
            // Dropdown Arrow Button
            GestureDetector(
              onTap: widget.dropdownItems.isNotEmpty
                  ? () => _showDropdownMenu(context)
                  : null, // Disable if no items
              child: const Icon(
                Icons.arrow_drop_down,
                size: 24,
                color: Color(0xFF767676),
              ),
            ),


          ],
        ),
      ),
    );
  }
}