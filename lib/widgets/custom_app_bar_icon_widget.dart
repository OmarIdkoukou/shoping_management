import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget customAppBarIconWidget(
        {IconData? iconData, void Function()? onTap, String? image}) =>
    GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 8.h,
          width: 10.w,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: image != null
              ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(image,color: Colors.grey,),
              )
              : Icon(
                  iconData,
                  size: 16,
                  color: Colors.grey[400],
                ),
        ),
      ),
    );
