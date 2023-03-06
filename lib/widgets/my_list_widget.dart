import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shopping_managment/constant/colors.dart';
import 'package:shopping_managment/constant/image_path.dart';

import '../constant/dimentions.dart';
import '../utilites/app_config.dart';

Widget myListWidget(
        {required double h, required bool isDown, required int price,required String title}) =>
    Container(
      height: h * 0.12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kBorderRadius + 3),
      ),
      child: Center(
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(fontSize: 16.sp),
          ),
          subtitle: Text(
            "30.January 2023 . walmart",
            style: TextStyle(fontSize: 14.sp, color: AppColors.kGrey),
          ),
          trailing: RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                    child: Icon(
                  isDown
                      ? Icons.arrow_downward_outlined
                      : Icons.arrow_upward_outlined,
                  size: 15,
                  color: isDown ? AppColors.kGreen : AppColors.kRed,
                )),
                TextSpan(
                  text: "$price${AppConfig.appCurrency}",
                  style: TextStyle(
                      color: isDown ? AppColors.kGreen : AppColors.kRed,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          leading: Image.asset(
            ImagePath.fileImage,
            height: (h * 0.1) / 1.5,
          ),
        ),
      ),
    );
