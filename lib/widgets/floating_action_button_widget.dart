import 'package:flutter/material.dart';

import '../constant/colors.dart';

Widget buildFloatingActionButton(
        {required double h,
        required double w,
        void Function()? onTap,
        IconData? iconData}) =>
    Card(
      elevation: 18,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 0.08 * h,
          height: 0.08 * w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.secondaryColor,
                  AppColors.primaryColor,
                ]),
          ),
          child: Icon(
            iconData ?? Icons.check,
            color: Colors.white,
            size: 30,
            fill: 0.8,
            shadows: const <Shadow>[
              Shadow(color: Colors.transparent, blurRadius: 15.0)
            ],
          ),
        ),
      ),
    );
