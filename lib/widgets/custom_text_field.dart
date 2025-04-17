import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
     this.controller,
     this.maxLine=1,
     this.hintText,
  });

  final TextEditingController? controller;
  final int? maxLine;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLine,
      style: TextStyle(color: EColors.scaffoldBg),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(16),
        filled: true,
        fillColor: EColors.grey,
        focusedBorder: getInputBorder,
        enabledBorder: getInputBorder,
        border: getInputBorder,
        hintText: hintText,
        hintStyle: TextStyle(
          color: EColors.dark,
        ),
      ),
    );
  }

  OutlineInputBorder get getInputBorder => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      );
}
