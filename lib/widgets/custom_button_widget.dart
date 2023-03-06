import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_managment/utilites/app_config.dart';

import '../constant/colors.dart';
import '../constant/dimentions.dart';

Widget customButtonWidget({required String title, required String balance}) =>
    Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kBorderRadius - 5),
            gradient: LinearGradient(
                colors: [AppColors.secondaryColor, AppColors.secondButtonColor])),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RichText(
                  text: TextSpan(
                    text: '$title\n',
                    style: TextStyle(fontSize: 13.sp, color: Colors.white38),
                    children: [
                      TextSpan(
                          text: "$balance${AppConfig.appCurrency}",
                          style:
                              TextStyle(fontSize: 18.sp, color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
