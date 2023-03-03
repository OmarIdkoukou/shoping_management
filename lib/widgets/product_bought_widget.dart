import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../constant/colors.dart';
import '../constant/dimentions.dart';
import '../utilites/app_config.dart';

Widget buildProductBoughtWidget({
  required String productName,
  required bool isDown,
  required double price,
  String? quantity,
  String? brandName,
  required double h,
  required double w,
  bool withArrow = false,
}) =>
    Container(
      height: h * 0.1,
      width: w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kBorderRadius + 10),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    !withArrow ? "\n$productName" : productName,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      withArrow
                          ? Icon(
                              isDown
                                  ? Icons.arrow_downward_outlined
                                  : Icons.arrow_upward_outlined,
                              size: 15,
                              color: isDown ? AppColors.kGreen : AppColors.kRed,
                            )
                          : const SizedBox.shrink(),
                      Text(
                        "$price${AppConfig.appCurrency}",
                        style: TextStyle(
                            color: isDown
                                ? withArrow
                                    ? AppColors.kGreen
                                    : AppColors.primaryColor
                                : AppColors.kRed,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    quantity ?? "",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Walmart: ${brandName ?? ""}",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              )
            ],
          )),
    );
