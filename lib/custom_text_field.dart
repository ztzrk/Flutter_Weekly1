import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weekly1/color.dart';
import 'package:weekly1/text_styles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String labelText;
  final String hintText;
  final List<TextInputFormatter>? inputFormatter;
  final String? Function(String?)? validator;
  final bool? isTextArea;
  final TextInputType? keyboardType;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.inputFormatter,
    this.validator,
    this.isTextArea,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: ColorConst.primary,
      style: MyTextStyle.smallText,
      minLines: isTextArea ?? false ? 6 : null,
      maxLines: isTextArea ?? false ? null : 1,
      keyboardType:
          isTextArea ?? false ? TextInputType.multiline : keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(color: ColorConst.lightgrey),
        labelStyle: TextStyle(color: ColorConst.lightgrey),
        floatingLabelStyle: TextStyle(color: ColorConst.primary),
        filled: true,
        fillColor: ColorConst.darkgrey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      inputFormatters: inputFormatter,
      validator: validator,
      controller: controller,
    );
  }
}
