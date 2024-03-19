import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      required this.fontSize,
      required this.fontWeight,
      required this.iconData,
      required this.color});

  final TextEditingController textEditingController;
  final String hintText;
  final double fontSize;
  final FontWeight fontWeight;
  final String iconData;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.end,
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Theme.of(context).primaryColor),
      controller: textEditingController,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(25.r)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.circular(25.r)),
          hintText: hintText,
          hintStyle: TextStyle(
              fontWeight: fontWeight, fontSize: fontSize, color: color),
          suffixIcon: Image.asset(iconData)),
    );
  }
}
