import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomOtpWidget extends StatefulWidget {
  final Color? pinColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final TextStyle? textStyle;
  final String? hintText;
  final double? borderRadius;
  final double? fieldHeight;
  final double? fieldWidth;
  final int numberOfFields;
  final void Function(String)? onCodeChanged;
  final void Function(String)? onSubmit;

  CustomOtpWidget({
    Key? key,
    this.pinColor,
    this.borderColor,
    this.focusedBorderColor,
    this.textStyle,
    this.hintText,
    this.borderRadius,
    this.fieldHeight,
    this.fieldWidth,
    this.numberOfFields = 4,
    this.onCodeChanged,
    this.onSubmit,
  }) : super(key: key);

  @override
  _CustomOtpWidgetState createState() => _CustomOtpWidgetState();
}

class _CustomOtpWidgetState extends State<CustomOtpWidget> {
  late List<TextEditingController> _controllers;
  late List<FocusNode> _focusNodes;
  late List<String> _otpValues;

  @override
  void initState() {
    super.initState();
    _controllers =
        List.generate(widget.numberOfFields, (_) => TextEditingController());
    _focusNodes = List.generate(widget.numberOfFields, (_) => FocusNode());
    _otpValues = List.generate(widget.numberOfFields, (_) => '');
  }

  @override
  void dispose() {
    for (var c in _controllers) {
      c.dispose();
    }
    for (var f in _focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.length > 1) {
      value = value.substring(0, 1);
      _controllers[index].text = value;
      _controllers[index].selection =
          TextSelection.fromPosition(TextPosition(offset: 1));
    }

    _otpValues[index] = value;

    if (value.isNotEmpty && index < widget.numberOfFields - 1) {
      _focusNodes[index].unfocus();
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    }

    if (value.isEmpty && index > 0) {
      _focusNodes[index].unfocus();
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }

    String currentOtp = _otpValues.join();

    if (widget.onCodeChanged != null) widget.onCodeChanged!(currentOtp);

    if (currentOtp.length == widget.numberOfFields &&
        !_otpValues.contains('')) {
      if (widget.onSubmit != null) widget.onSubmit!(currentOtp);
    }
  }

  @override
  Widget build(BuildContext context) {
    final inputDecoration = InputDecoration(
      hintText: widget.hintText ?? "0",
      hintStyle: TextStyle(color: const Color(0xFF757575)),
      border: authOutlineInputBorder(
          widget.borderColor ?? Colors.white, widget.borderRadius ?? 12.0),
      enabledBorder: authOutlineInputBorder(
          widget.borderColor ?? Colors.white, widget.borderRadius ?? 12.0),
      focusedBorder: authOutlineInputBorder(
        widget.focusedBorderColor ?? const Color(0xFFFF7643),
        widget.borderRadius ?? 12.0,
      ),
    );

    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(widget.numberOfFields, (index) {
          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  right: index != widget.numberOfFields - 1 ? 5.0 : 0),
              child: SizedBox(
                height: widget.fieldHeight ?? 64,
                width: widget.fieldWidth ?? 64,
                child: TextField(
                  controller: _controllers[index],
                  focusNode: _focusNodes[index],
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  maxLength: 1,
                  cursorColor: Colors.black, // ✅ Cursor color added here
                  style: widget.textStyle ??
                      Theme.of(context).textTheme.titleLarge,
                  decoration: inputDecoration.copyWith(counterText: ''),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  onChanged: (value) => _onChanged(value, index),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

OutlineInputBorder authOutlineInputBorder(Color color, double borderRadius) {
  return OutlineInputBorder(
    borderSide: BorderSide(color: color),
    borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
  );
}
