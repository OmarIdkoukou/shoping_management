import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constant/colors.dart';
import '../constant/dimentions.dart';

Widget buildCustomTextWidget({
  required String hintText,
  Color? fillColor,
  Color? hintColor,
  String? helperText,
  int? maxLength,
  TextEditingController? textEditingController,
}) =>
    TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textInputAction: TextInputAction.next,
      maxLength: maxLength,
      controller: textEditingController,
      decoration: InputDecoration(
        fillColor: fillColor ?? AppColors.fillColor.withOpacity(0.18),
        isDense: true,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: BorderSide.none,
        ),
        hintText: hintText,
        helperText: helperText,
        helperStyle: TextStyle(color: Colors.grey.shade300),
        hintStyle: TextStyle(
          color: hintColor ?? AppColors.fillColor.withOpacity(0.6),
          fontSize: 15.sp,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      ),
    );
