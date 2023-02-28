import 'package:flutter/material.dart';

Widget generalButton(
        {void Function()? onTap,
        required double h,
        required double w,
        Color? colors,
        required String name,
        double? fontSize,
        double? borderRadius,
        Color? textColor}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 5.0),
            color: colors ?? Colors.black45),
        child: Center(
            child: Text(
          name,
          style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.w600),
        )),
      ),
    );
